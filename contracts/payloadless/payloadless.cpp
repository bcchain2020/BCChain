#include <bciolib/bcio.hpp>
#include <bciolib/print.hpp>
using namespace bcio;

class payloadless : public bcio::contract {
  public:
      using contract::contract;

      void doit() {
         print( "Im a payloadless action" );
      }
};

BCIO_ABI( payloadless, (doit) )
