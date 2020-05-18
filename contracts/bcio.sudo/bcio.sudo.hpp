#pragma once

#include <bciolib/bcio.hpp>

namespace bcio {

   class sudo : public contract {
      public:
         sudo( account_name self ):contract(self){}

         void exec();

   };

} /// namespace bcio
