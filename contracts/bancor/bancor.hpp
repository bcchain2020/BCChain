/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#pragma once

#include <bciolib/bcio.hpp>
#include <bciolib/token.hpp>
#include <bciolib/reflect.hpp>
#include <bciolib/generic_currency.hpp>

#include <bancor/converter.hpp>
#include <currency/currency.hpp>

namespace bancor {
   typedef bcio::generic_currency< bcio::token<N(other),S(4,OTHER)> >  other_currency;
   typedef bcio::generic_currency< bcio::token<N(bancor),S(4,RELAY)> > relay_currency;
   typedef bcio::generic_currency< bcio::token<N(currency),S(4,CUR)> > cur_currency;

   typedef converter<relay_currency, other_currency, cur_currency > example_converter;
} /// bancor

