/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */

#include <bciolib/bcio.hpp>

namespace bcio {

   class noop: public contract {
      public:
         noop( account_name self ): contract( self ) { }
         void anyaction( account_name from,
                         const std::string& /*type*/,
                         const std::string& /*data*/ )
         {
            require_auth( from );
         }
   };

   BCIO_ABI( noop, ( anyaction ) )

} /// bcio     
