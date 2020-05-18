/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */

#include <bcio/chain/chain_id_type.hpp>
#include <bcio/chain/exceptions.hpp>

namespace bcio { namespace chain {

   void chain_id_type::reflector_verify()const {
      BC_ASSERT( *reinterpret_cast<const fc::sha256*>(this) != fc::sha256(), chain_id_type_exception, "chain_id_type cannot be zero" );
   }

} }  // namespace bcio::chain

namespace fc {

   void to_variant(const bcio::chain::chain_id_type& cid, fc::variant& v) {
      to_variant( static_cast<const fc::sha256&>(cid), v);
   }

   void from_variant(const fc::variant& v, bcio::chain::chain_id_type& cid) {
      from_variant( v, static_cast<fc::sha256&>(cid) );
   }

} // fc
