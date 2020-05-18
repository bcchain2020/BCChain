/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#pragma once

#include <bcio/chain/exceptions.hpp>

namespace bcio { namespace chain {

struct chain_snapshot_header {
   /**
    * Version history
    *   1: initial version
    */

   static constexpr uint32_t minimum_compatible_version = 1;
   static constexpr uint32_t current_version = 1;

   uint32_t version = current_version;

   void validate() const {
      auto min = minimum_compatible_version;
      auto max = current_version;
      BC_ASSERT(version >= min && version <= max,
              snapshot_validation_exception,
              "Unsupported version of chain snapshot: ${version}. Supported version must be between ${min} and ${max} inclusive.",
              ("version",version)("min",min)("max",max));
   }
};

} }

FC_REFLECT(bcio::chain::chain_snapshot_header,(version))