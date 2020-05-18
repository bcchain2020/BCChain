#include "bcio.system.hpp"

#include <bcio.token/bcio.token.hpp>

namespace bciosystem
{

const int64_t min_pervote_daily_pay = 100'0000;
const int64_t min_activated_stake = 150'000'000'0000;
const double continuous_rate = 0.04879;					 // 5% annual rate
const double perblock_rate = 0.0025;					 // 0.25%
const double standby_rate = 0.0075;						 // 0.75%
const uint32_t blocks_per_year = 52 * 7 * 24 * 2 * 3600; // half seconds per year
const uint32_t seconds_per_year = 52 * 7 * 24 * 3600;
const uint32_t blocks_per_day = 2 * 24 * 3600;
const uint32_t blocks_per_hour = 2 * 3600;
const uint64_t useconds_per_day = 24 * 3600 * uint64_t(1000000);
const uint64_t useconds_three_hours = 3 * 3600 * uint64_t(1000000);//3h
const uint64_t ten_minute = 600 * uint64_t(1000000);//10 min for test
const uint64_t useconds_per_year = seconds_per_year * 1000000ll;

void system_contract::onblock(block_timestamp timestamp, account_name producer)
{
	using namespace bcio;

	require_auth(N(bcio));

	/** until activated stake crosses this threshold no new rewards are paid */
	if (_bcate.total_activated_stake < min_activated_stake)
		return;

	if (_bcate.last_pervote_bucket_fill == 0) /// start the presses
		_bcate.last_pervote_bucket_fill = current_time();

	/** 
		 * At startup the initial producer may not be one that is registered / elected
		 * and therefore there may be no producer object for them.
		 */
	auto prod = _producers.find(producer);
	if (prod != _producers.end())
	{ 
		_bcate.total_unpaid_blocks++;
	 	_producers.modify(prod, 0, [&](auto &p) {
			p.unpaid_blocks++;
			p.total_blocks++;
		});

		auto ct = current_time();
		auto time_point = ct - _bcate.last_calculate_time;

		//每 十分钟 计算一次待领奖励
		if (time_point > ten_minute) 
	 	{
			const asset token_supply = token(N(bcio.token)).get_supply(symbol_type(system_token_symbol).name());

			auto new_tokens = static_cast<int64_t>((continuous_rate * double(token_supply.amount) * double(time_point)) / double(useconds_per_year));
			auto to_producers = new_tokens / 5;				   //用于给超级节点的奖励，总增发量的1/5
			auto to_per_block_pay = to_producers / 4;			   //用于出块的奖励，给超级节点奖励的1/4
			auto to_per_vote_pay = to_producers - to_per_block_pay; //用于得票奖励，给超级节点奖励的3/4

			double now_base_votes_weight = _bcate.total_producer_vote_weight;
			for(const auto& pd : _producers)
			{
				int64_t producer_per_block_pay = 0;
				if (_bcate.total_unpaid_blocks > 0)
				{
					producer_per_block_pay = (to_per_block_pay * pd.unpaid_blocks) / _bcate.total_unpaid_blocks;
				}
				int64_t producer_per_vote_pay = 0;
				if (_bcate.total_producer_vote_weight > 0)
				{
					producer_per_vote_pay = int64_t((to_per_vote_pay * pd.total_votes) /now_base_votes_weight);
				}

				int64_t prodpay = producer_per_block_pay + producer_per_vote_pay;
				_producers.modify(pd, 0, [&](auto &p) {
					p.bunclaim += asset(producer_per_block_pay);
					p.vunclaim += asset(producer_per_vote_pay);
					p.unclaim += asset(prodpay);
				});
			}
			_bcate.last_calculate_time = current_time();
		}
	}
	/// only update block producers once every minute, block_timestamp is in half seconds
	if (timestamp.slot - _bcate.last_producer_schedule_update.slot > 120)
	{
		update_elected_producers(timestamp);

		if ((timestamp.slot - _bcate.last_name_close.slot) > blocks_per_day)
		{
			name_bid_table bids(_self, _self);
			auto idx = bids.get_index<N(highbid)>();
			auto hibcst = idx.begin();
			if (hibcst != idx.end() &&
				hibcst->high_bid > 0 &&
				hibcst->last_bid_time < (current_time() - useconds_per_day) &&
				_bcate.thresh_activated_stake_time > 0 &&
				(current_time() - _bcate.thresh_activated_stake_time) > 14 * useconds_per_day)
			{
				_bcate.last_name_close = timestamp;
				idx.modify(hibcst, 0, [&](auto &b) {
					b.high_bid = -b.high_bid;
				});
			}
		}
	}
} // namespace bciosystem 

using namespace bcio;
void system_contract::claimrewards(const account_name &owner)
{
	require_auth(owner);

	const auto &prod = _producers.get(owner);
	bcio_assert(prod.active(), "producer does not have an active key");

	bcio_assert(_bcate.total_activated_stake >= min_activated_stake,
				 "cannot claim rewards until the chain is activated (at least 15% of all tokens participate in voting)");

	auto ct = current_time();

	bcio_assert(ct - prod.last_claim_time > useconds_per_day, "already claimed rewards within past day");

	const asset token_supply = token(N(bcio.token)).get_supply(symbol_type(system_token_symbol).name());
	const auto usecs_since_last_fill = ct - _bcate.last_pervote_bucket_fill;

	if (usecs_since_last_fill > 0 && _bcate.last_pervote_bucket_fill > 0)
	{

		auto new_tokens = static_cast<int64_t>((continuous_rate * double(token_supply.amount) * double(usecs_since_last_fill)) / double(useconds_per_year));

		auto to_producers = new_tokens / 5;							 //用于给超级节点的奖励，总增发量的1/5
		auto to_voters_pay = new_tokens / 5;						 //2019/03/11
		auto to_savings = new_tokens - to_producers - to_voters_pay; //2019/03/11	存起来给社区提案的奖励，总增发量的3/5
		auto to_per_block_pay = to_producers / 4;					 //用于出块的奖励，给超级节点奖励的1/4
		auto to_per_vote_pay = to_producers - to_per_block_pay;		 //用于得票奖励，给超级节点奖励的3/4

		INLINE_ACTION_SENDER(bcio::token, issue)
		(N(bcio.token), {{N(bcio), N(active)}},
		 {N(bcio), asset(new_tokens), std::string("issue tokens for producer pay and savings")});

		INLINE_ACTION_SENDER(bcio::token, transfer)
		(N(bcio.token), {N(bcio), N(active)},
		 {N(bcio), N(bcio.saving), asset(to_savings), "unallocated inflation"});

		INLINE_ACTION_SENDER(bcio::token, transfer)
		(N(bcio.token), {N(bcio), N(active)},
		 {N(bcio), N(bcio.bpay), asset(to_per_block_pay), "fund per-block bucket"});

		INLINE_ACTION_SENDER(bcio::token, transfer)
		(N(bcio.token), {N(bcio), N(active)},
		 {N(bcio), N(bcio.vpay), asset(to_per_vote_pay), "fund per-vote bucket"});

		INLINE_ACTION_SENDER(bcio::token, transfer)
		(N(bcio.token), {N(bcio), N(active)}, //2019/03/11
		 {N(bcio), N(bcio.vote), asset(to_voters_pay), "fund per-vote bucket"});

		_bcate.pervote_bucket += to_per_vote_pay;   //更新可用于得票奖励的总token量
		_bcate.perblock_bucket += to_per_block_pay; //更新可用于出块奖励的总token量
		_bcate.prodtotal_bucket += to_producers;	//2019/03/12	更新可用于投票奖励的总token量
		_bcate.pertovote_bucket += to_voters_pay;   //2019/03/11	更新可用于投票奖励的总token量

		_bcate.last_pervote_bucket_fill = ct; //更新增发时间点

		double now_base_votes_weight = _bcate.total_producer_vote_weight;
		int64_t producer_per_block_pay = 0;
		int64_t producer_per_vote_pay = 0;
		for(const auto& pd : _producers)
		{
			if (_bcate.total_unpaid_blocks > 0)
			{
				producer_per_block_pay = (to_per_block_pay * pd.unpaid_blocks) / _bcate.total_unpaid_blocks;
			}

			if (_bcate.total_producer_vote_weight > 0)
			{
				producer_per_vote_pay = int64_t((to_per_vote_pay * pd.total_votes) /now_base_votes_weight);
			}

			int64_t prodpay = producer_per_block_pay + producer_per_vote_pay;
			_producers.modify(pd, 0, [&](auto &p) {
				p.cbunclaim += asset(producer_per_block_pay);
				p.cvunclaim += asset(producer_per_vote_pay);
				p.cunclaim += asset(prodpay);
			});
		}

		producer_per_block_pay = (to_per_block_pay * prod.unpaid_blocks) / _bcate.total_unpaid_blocks;
		producer_per_vote_pay = int64_t((to_per_vote_pay * prod.total_votes) /now_base_votes_weight);

		_bcate.pervote_bucket -= prod.cvunclaim.amount;
		_bcate.perblock_bucket -= prod.cbunclaim.amount;
		_bcate.prodtotal_bucket = _bcate.pervote_bucket + _bcate.perblock_bucket; //更新可用于投票奖励的总token量
		_bcate.total_unpaid_blocks -= prod.unpaid_blocks;

		if (producer_per_block_pay > 0)
		{
			INLINE_ACTION_SENDER(bcio::token, transfer)
			(N(bcio.token), {N(bcio.bpay), N(active)},
			 {N(bcio.bpay), owner, prod.cbunclaim, std::string("producer block pay")});
		}

		if (producer_per_vote_pay > 0)
		{
			INLINE_ACTION_SENDER(bcio::token, transfer)
			(N(bcio.token), {N(bcio.vpay), N(active)},
			 {N(bcio.vpay), owner, prod.cvunclaim, std::string("producer vote pay")});
		}

		_producers.modify(prod, 0, [&](auto &p) {
			p.last_claim_time = ct;
			p.unpaid_blocks = 0;
			p.bunclaim = asset(0);
			p.vunclaim = asset(0);
			p.unclaim = asset(0);
			p.cbunclaim = asset(0);
			p.cvunclaim = asset(0);
			p.cunclaim = asset(0);
		});

	}
}

//2019/03/12 以下
using namespace bcio;
void system_contract::prodrewards(const account_name &owner)
{
	require_auth(owner);
}
//2019/03/12 以上

} //namespace bciosystem
