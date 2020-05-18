/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#pragma once

#include <bcio/chain/types.hpp>
#include <bcio/chain/contract_types.hpp>

namespace bcio { namespace chain {

   class apply_context;

   /**
    * @defgroup native_action_handlers Native Action Handlers
    */
   ///@{
   void apply_bcio_newaccount(apply_context&);
   void apply_bcio_updateauth(apply_context&);
   void apply_bcio_deleteauth(apply_context&);
   void apply_bcio_linkauth(apply_context&);
   void apply_bcio_unlinkauth(apply_context&);

   /*
   void apply_bcio_postrecovery(apply_context&);
   void apply_bcio_passrecovery(apply_context&);
   void apply_bcio_vetorecovery(apply_context&);
   */

   void apply_bcio_setcode(apply_context&);
   void apply_bcio_setabi(apply_context&);

   void apply_bcio_canceldelay(apply_context&);
   ///@}  end action handlers

} } /// namespace bcio::chain
