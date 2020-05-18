#include <bciolib/bcio.hpp>

using namespace bcio;

class hello : public bcio::contract {
  public:
      using contract::contract;

      /// @abi action 
      void hi( account_name user ) {
         print( "Hello, ", name{user} );
      }
};

BCIO_ABI( hello, (hi) )
