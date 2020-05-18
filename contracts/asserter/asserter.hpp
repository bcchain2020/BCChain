/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */

#include <bciolib/bcio.hpp>

namespace asserter {
   struct assertdef {
      int8_t      condition;
      std::string message;

      BCLIB_SERIALIZE( assertdef, (condition)(message) )
   };
}
