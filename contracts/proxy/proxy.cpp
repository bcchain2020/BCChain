/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#include <proxy/proxy.hpp>
#include <bciolib/transaction.hpp>
#include <bcio.token/bcio.token.hpp>

namespace proxy {
   using namespace bcio;

   namespace configs {

      bool get(config &out, const account_name &self) {
         auto it = db_find_i64(self, self, N(config), config::key);
         if (it != -1) {
            auto size = db_get_i64(it, (char*)&out, sizeof(config));
            bcio_assert(size == sizeof(config), "Wrong record size");
            return true;
         } else {
            return false;
         }
      }

      void store(const config &in, const account_name &self) {
         auto it = db_find_i64(self, self, N(config), config::key);
         if (it != -1) {
            db_update_i64(it, self, (const char *)&in, sizeof(config));
         } else {
            db_store_i64(self, N(config), self, config::key, (const char *)&in, sizeof(config));
         }
      }
   };

   template<typename T>
   void apply_transfer(uint64_t receiver, account_name /* code */, const T& transfer) {
      config code_config;
      const auto self = receiver;
      auto get_res = configs::get(code_config, self);
      bcio_assert(get_res, "Attempting to use unconfigured proxy");
      if (transfer.from == self) {
         bcio_assert(transfer.to == code_config.owner,  "proxy may only pay its owner" );
      } else {
         bcio_assert(transfer.to == self, "proxy is not involved in this transfer");
         T new_transfer = T(transfer);
         new_transfer.from = self;
         new_transfer.to = code_config.owner;

         auto id = code_config.next_id++;
         configs::store(code_config, self);

         transaction out;
         out.actions.emplace_back(permission_level{self, N(active)}, N(bcio.token), N(transfer), new_transfer);
         out.delay_sec = code_config.delay;
         out.send(id, self);
      }
   }

   void apply_setowner(uint64_t receiver, set_owner params) {
      const auto self = receiver;
      require_auth(params.owner);
      config code_config;
      configs::get(code_config, self);
      code_config.owner = params.owner;
      code_config.delay = params.delay;
      bcio::print("Setting owner to: ", name{params.owner}, " with delay: ", params.delay, "\n");
      configs::store(code_config, self);
   }

   template<size_t ...Args>
   void apply_onerror(uint64_t receiver, const onerror& error ) {
      bcio::print("starting onerror\n");
      const auto self = receiver;
      config code_config;
      bcio_assert(configs::get(code_config, self), "Attempting use of unconfigured proxy");

      auto id = code_config.next_id++;
      configs::store(code_config, self);

      bcio::print("Resending Transaction: ", error.sender_id, " as ", id, "\n");
      transaction dtrx = error.unpack_sent_trx();
      dtrx.delay_sec = code_config.delay;
      dtrx.send(id, self);
   }
}

using namespace proxy;
using namespace bcio;

extern "C" {

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
      if( code == N(bcio) && action == N(onerror) ) {
         apply_onerror( receiver, onerror::from_current_action() );
      } else if( code == N(bcio.token) ) {
         if( action == N(transfer) ) {
            apply_transfer(receiver, code, unpack_action_data<bcio::token::transfer_args>());
         }
      } else if( code == receiver ) {
         if( action == N(setowner) ) {
            apply_setowner(receiver, unpack_action_data<set_owner>());
         }
      }
   }
}
