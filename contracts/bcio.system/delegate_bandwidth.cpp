/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#include "bcio.system.hpp"

#include <bciolib/bcio.hpp>
#include <bciolib/print.hpp>
#include <bciolib/datastream.hpp>
#include <bciolib/serialize.hpp>
#include <bciolib/multi_index.hpp>
#include <bciolib/privileged.h>
#include <bciolib/transaction.hpp>

#include <bcio.token/bcio.token.hpp>

#include <math.h>
#include <map>

namespace bciosystem
{
using bcio::asset;
using bcio::bytes;
using bcio::const_mem_fun;
using bcio::indexed_by;
using bcio::permission_level;
using bcio::print;
using std::map;
using std::pair;

static constexpr time refund_delay = 3 * 24 * 3600;
static constexpr time refund_expiration_time = 3600;
//	static constexpr time  reward_time = 24*3600;
static constexpr time reward_time = 10;
static int64_t reward_vote = 2'000'000'0000.0; 
static int64_t reward_max = 100000000;

/**
	 *  Every user 'from' has a scope/table that uses every receipient 'to' as the primary key.
	 */
struct delegated_bandwidth
{

	account_name from;
	account_name to;
	asset net_weight;
	asset cpu_weight;

	uint64_t primary_key() const { return to; }

	// explicit serialization macro is not necessary, used here only to improve compilation time
	BCLIB_SERIALIZE(delegated_bandwidth, (from)(to)(net_weight)(cpu_weight))
};

struct refund_request
{
	account_name owner;
	time request_time;
	bcio::asset net_amount;
	bcio::asset cpu_amount;
	bcio::asset vote_pay;

	uint64_t primary_key() const { return owner; }

	// explicit serialization macro is not necessary, used here only to improve compilation time
	BCLIB_SERIALIZE(refund_request, (owner)(request_time)(net_amount)(cpu_amount)(vote_pay))
};

/**
	 *  These tables are designed to be constructed in the scope of the relevant user, this
	 *  facilitates simpler API for per-user queries
	 */
typedef bcio::multi_index<N(delband), delegated_bandwidth> del_bandwidth_table;
typedef bcio::multi_index<N(refunds), refund_request> refunds_table;

void validate_b1_vesting(int64_t stake)
{
	const int64_t base_time = 1527811200; /// 2018-06-01
	const int64_t max_claimable = 100'000'000'0000ll;
	const int64_t claimable = int64_t(max_claimable * double(now() - base_time) / (10 * seconds_per_year));
	bcio_assert(max_claimable - claimable <= stake, "b1 can only claim their tokens over 10 years");
}

void system_contract::changebw(account_name from, account_name receiver,
							   const asset stake_net_delta, const asset stake_cpu_delta, bool transfer)
{
	require_auth(from);
	bcio_assert(stake_net_delta != asset(0), "should stake non-zero amount");
	bcio_assert(std::abs((stake_net_delta + stake_cpu_delta).amount) >= std::max(std::abs(stake_net_delta.amount), std::abs(stake_cpu_delta.amount)),
				 "net and cpu deltas cannot be opposite signs");
	account_name source_stake_from = from;
	if (transfer)
	{
		from = receiver;
	}

	//总投票量
	_bcate.total_vote_stake += (stake_net_delta.amount / 10000);
	
	// update stake delegated from "from" to "receiver"
	{
		del_bandwidth_table del_tbl(_self, from);
		auto itr = del_tbl.find(receiver);
		if (itr == del_tbl.end())
		{
			itr = del_tbl.emplace(from, [&](auto &dbo) {
				dbo.from = from;
				dbo.to = receiver;
				dbo.net_weight = stake_net_delta;
				dbo.cpu_weight = stake_cpu_delta;
			});
		}
		else
		{
			del_tbl.modify(itr, 0, [&](auto &dbo) {
				dbo.net_weight += stake_net_delta;
				dbo.cpu_weight += stake_cpu_delta;
			});
		}
		bcio_assert(asset(0) <= itr->net_weight, "insufficient staked net bandwidth");
		bcio_assert(asset(0) <= itr->cpu_weight, "insufficient staked cpu bandwidth");
		if (itr->net_weight == asset(0) && itr->cpu_weight == asset(0))
		{
			del_tbl.erase(itr);
		}
	} // itr can be invalid, should go out of scope

	// update totals of "receiver"
	{
		user_resources_table totals_tbl(_self, receiver);
		auto tot_itr = totals_tbl.find(receiver);
		if (tot_itr == totals_tbl.end())
		{
			tot_itr = totals_tbl.emplace(from, [&](auto &tot) {
				tot.owner = receiver;
				tot.net_weight = stake_net_delta;
				tot.cpu_weight = stake_cpu_delta;
			});
		}
		else
		{
			totals_tbl.modify(tot_itr, from == receiver ? from : 0, [&](auto &tot) {
				
				tot.net_weight += stake_net_delta;
				tot.cpu_weight += stake_cpu_delta;
			});
		}
		bcio_assert(asset(0) <= tot_itr->net_weight, "insufficient staked total net bandwidth");
		bcio_assert(asset(0) <= tot_itr->cpu_weight, "insufficient staked total cpu bandwidth");

		//   set_resource_limits( receiver, tot_itr->ram_bytes, tot_itr->net_weight.amount, tot_itr->cpu_weight.amount );
		set_resource_limits(receiver, -1, -1, -1);

		if (tot_itr->net_weight == asset(0) && tot_itr->cpu_weight == asset(0) && tot_itr->ram_bytes == 0 && tot_itr->votereward == asset(0))
		{
			totals_tbl.erase(tot_itr);
		}
	} // tot_itr can be invalid, should go out of scope

	// create refund or update from existing refund
	if (N(bcio.stake) != source_stake_from)
	{ //for bcio both transfer and refund make no sense
		refunds_table refunds_tbl(_self, from);
		auto req = refunds_tbl.find(from);

		//create/update/delete refund
		auto net_balance = stake_net_delta;
		auto cpu_balance = stake_cpu_delta;
		bool need_deferred_trx = false;

		// net and cpu are same sign by assertions in delegatebw and undelegatebw
		// redundant assertion also at start of changebw to protect against misuse of changebw
		bool is_undelegating = (net_balance.amount + cpu_balance.amount) < 0;
		bool is_delegating_to_self = (!transfer && from == receiver);

		if (is_delegating_to_self || is_undelegating)
		{
			if (req != refunds_tbl.end())
			{ //need to update refund
				refunds_tbl.modify(req, 0, [&](refund_request &r) {
					if (net_balance < asset(0) || cpu_balance < asset(0))
					{
						r.request_time = now();
					}
					r.net_amount -= net_balance;
					if (r.net_amount < asset(0))
					{
						net_balance = -r.net_amount;
						r.net_amount = asset(0);
					}
					else
					{
						net_balance = asset(0);
					}
					r.cpu_amount -= cpu_balance;
					if (r.cpu_amount < asset(0))
					{
						cpu_balance = -r.cpu_amount;
						r.cpu_amount = asset(0);
					}
					else
					{
						cpu_balance = asset(0);
					}
				});

				bcio_assert(asset(0) <= req->net_amount, "negative net refund amount"); //should never happen
				bcio_assert(asset(0) <= req->cpu_amount, "negative cpu refund amount"); //should never happen

				if (req->net_amount == asset(0) && req->cpu_amount == asset(0))
				{
					refunds_tbl.erase(req);
					need_deferred_trx = false;
				}
				else
				{
					need_deferred_trx = true;
				}
			}
			else if (net_balance < asset(0) || cpu_balance < asset(0))
			{ //need to create refund
				refunds_tbl.emplace(from, [&](refund_request &r) {
					r.owner = from;
					if (net_balance < asset(0))
					{
						r.net_amount = -net_balance;
						net_balance = asset(0);
					} // else r.net_amount = 0 by default constructor
					if (cpu_balance < asset(0))
					{
						r.cpu_amount = -cpu_balance;
						cpu_balance = asset(0);
					} // else r.cpu_amount = 0 by default constructor
					r.request_time = now();
				});
				need_deferred_trx = true;
			} // else stake increase requested with no existing row in refunds_tbl -> nothing to do with refunds_tbl
		}	 /// end if is_delegating_to_self || is_undelegating

		if (need_deferred_trx)
		{
			bcio::transaction out;
			out.actions.emplace_back(permission_level{from, N(active)}, _self, N(refund), from);
			out.delay_sec = refund_delay;
			cancel_deferred(from); // TODO: Remove this line when replacing deferred trxs is fixed
			out.send(from, from, true);
		}
		else
		{
			cancel_deferred(from);
		}

		auto transfer_amount = net_balance + cpu_balance;
		if (asset(0) < transfer_amount)
		{
			INLINE_ACTION_SENDER(bcio::token, transfer)
			(N(bcio.token), {source_stake_from, N(active)},
			 {source_stake_from, N(bcio.stake), asset(transfer_amount), std::string("stake bandwidth")});
		}
	}

	// update voting power
	{
		asset total_update = stake_net_delta + stake_cpu_delta;
		auto from_voter = _voters.find(from);
		if (from_voter == _voters.end())
		{
			from_voter = _voters.emplace(from, [&](auto &v) {
				v.owner = from;
				v.staked = total_update.amount;
			});
		}
		else
		{
			_voters.modify(from_voter, 0, [&](auto &v) {
				v.staked += total_update.amount;
			});
		}
		bcio_assert(0 <= from_voter->staked, "stake for voting cannot be negative");
		if (from == N(b1))
		{
			validate_b1_vesting(from_voter->staked);
		}

		if (from_voter->producers.size() || from_voter->proxy)
		{
			update_votes(from, from_voter->proxy, from_voter->producers, false);
		}
	}
}
/////

////asset stake_cpu_quantity,  stake_cpu_quantity,
void system_contract::delegatebw(account_name from, account_name receiver,
								 asset stake_net_quantity,
								 bool transfer)
{
	bcio_assert(stake_net_quantity >= asset(0), "must stake a positive amount");
	
	bcio_assert(!transfer || from != receiver, "cannot use transfer flag if delegating to self");

	bcio_assert(from == receiver, "cannot delegating to others");

	bcio::print("account_name :", from, ",  account_name :", receiver, "\n");

	changebw(from, receiver, stake_net_quantity, asset(0), transfer);
} // delegatebw  , asset unstake_cpu_quantity)

void system_contract::undelegatebw(account_name from, account_name receiver,
								   asset unstake_net_quantity)
{
	bcio_assert(asset() <= unstake_net_quantity, "must unstake a positive amount");
	
	bcio_assert(_bcate.total_activated_stake >= min_activated_stake,
				 "cannot undelegate bandwidth until the chain is activated (at least 15% of all tokens participate in voting)");

	changebw(from, receiver, -unstake_net_quantity, asset(0), false);
} // undelegatebw  -unstake_cpu_quantity,

void system_contract::refund(const account_name owner)
{
	require_auth(owner);

	refunds_table refunds_tbl(_self, owner);
	auto req = refunds_tbl.find(owner);
	bcio_assert(req != refunds_tbl.end(), "refund request not found");
	bcio_assert(req->request_time + refund_delay <= now(), "refund is not available yet");

	// Until now() becomes NOW, the fact that now() is the timestamp of the previous block could in theory
	// allow people to get their tokens earlier than the 3 day delay if the unstake happened immediately after many
	// consecutive missed blocks.

	INLINE_ACTION_SENDER(bcio::token, transfer)
	(N(bcio.token), {N(bcio.stake), N(active)},
	 {N(bcio.stake), req->owner, req->net_amount + req->cpu_amount, std::string("unstake")});

	refunds_tbl.erase(req);
}

//2019/03/12 以上

// void system_contract::buyrambytes(account_name payer, account_name receiver, uint32_t bytes) {}
// void system_contract::buyram(account_name payer, account_name receiver, asset quant) {}
// void system_contract::buymembytes(account_name payer, account_name receiver, uint32_t bytes) {}
// void system_contract::buymem(account_name payer, account_name receiver, asset quant) {}
// void system_contract::sellram(account_name account, int64_t bytes) {}
// void system_contract::changebw_create_account(account_name from, account_name receiver,
// 											  const asset stake_net_delta, const asset stake_cpu_delta, bool transfer) {}
// void system_contract::mydelegatebw(account_name from, account_name receiver, asset stake_net_quantity, asset stake_cpu_quantity, bool transfer) {}

} //namespace bciosystem
