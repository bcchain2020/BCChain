/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#include <bciolib/bcio.hpp>

#include "test_api.hpp"

void test_types::types_size() {

   bcio_assert( sizeof(int64_t) == 8, "int64_t size != 8");
   bcio_assert( sizeof(uint64_t) ==  8, "uint64_t size != 8");
   bcio_assert( sizeof(uint32_t) ==  4, "uint32_t size != 4");
   bcio_assert( sizeof(int32_t) ==  4, "int32_t size != 4");
   bcio_assert( sizeof(uint128_t) == 16, "uint128_t size != 16");
   bcio_assert( sizeof(int128_t) == 16, "int128_t size != 16");
   bcio_assert( sizeof(uint8_t) ==  1, "uint8_t size != 1");

   bcio_assert( sizeof(account_name) ==  8, "account_name size !=  8");
   bcio_assert( sizeof(table_name) ==  8, "table_name size !=  8");
   bcio_assert( sizeof(time) ==  4, "time size !=  4");
   bcio_assert( sizeof(bcio::key256) == 32, "key256 size != 32" );
}

void test_types::char_to_symbol() {

   bcio_assert( bcio::char_to_symbol('1') ==  1, "bcio::char_to_symbol('1') !=  1");
   bcio_assert( bcio::char_to_symbol('2') ==  2, "bcio::char_to_symbol('2') !=  2");
   bcio_assert( bcio::char_to_symbol('3') ==  3, "bcio::char_to_symbol('3') !=  3");
   bcio_assert( bcio::char_to_symbol('4') ==  4, "bcio::char_to_symbol('4') !=  4");
   bcio_assert( bcio::char_to_symbol('5') ==  5, "bcio::char_to_symbol('5') !=  5");
   bcio_assert( bcio::char_to_symbol('a') ==  6, "bcio::char_to_symbol('a') !=  6");
   bcio_assert( bcio::char_to_symbol('b') ==  7, "bcio::char_to_symbol('b') !=  7");
   bcio_assert( bcio::char_to_symbol('c') ==  8, "bcio::char_to_symbol('c') !=  8");
   bcio_assert( bcio::char_to_symbol('d') ==  9, "bcio::char_to_symbol('d') !=  9");
   bcio_assert( bcio::char_to_symbol('e') == 10, "bcio::char_to_symbol('e') != 10");
   bcio_assert( bcio::char_to_symbol('f') == 11, "bcio::char_to_symbol('f') != 11");
   bcio_assert( bcio::char_to_symbol('g') == 12, "bcio::char_to_symbol('g') != 12");
   bcio_assert( bcio::char_to_symbol('h') == 13, "bcio::char_to_symbol('h') != 13");
   bcio_assert( bcio::char_to_symbol('i') == 14, "bcio::char_to_symbol('i') != 14");
   bcio_assert( bcio::char_to_symbol('j') == 15, "bcio::char_to_symbol('j') != 15");
   bcio_assert( bcio::char_to_symbol('k') == 16, "bcio::char_to_symbol('k') != 16");
   bcio_assert( bcio::char_to_symbol('l') == 17, "bcio::char_to_symbol('l') != 17");
   bcio_assert( bcio::char_to_symbol('m') == 18, "bcio::char_to_symbol('m') != 18");
   bcio_assert( bcio::char_to_symbol('n') == 19, "bcio::char_to_symbol('n') != 19");
   bcio_assert( bcio::char_to_symbol('o') == 20, "bcio::char_to_symbol('o') != 20");
   bcio_assert( bcio::char_to_symbol('p') == 21, "bcio::char_to_symbol('p') != 21");
   bcio_assert( bcio::char_to_symbol('q') == 22, "bcio::char_to_symbol('q') != 22");
   bcio_assert( bcio::char_to_symbol('r') == 23, "bcio::char_to_symbol('r') != 23");
   bcio_assert( bcio::char_to_symbol('s') == 24, "bcio::char_to_symbol('s') != 24");
   bcio_assert( bcio::char_to_symbol('t') == 25, "bcio::char_to_symbol('t') != 25");
   bcio_assert( bcio::char_to_symbol('u') == 26, "bcio::char_to_symbol('u') != 26");
   bcio_assert( bcio::char_to_symbol('v') == 27, "bcio::char_to_symbol('v') != 27");
   bcio_assert( bcio::char_to_symbol('w') == 28, "bcio::char_to_symbol('w') != 28");
   bcio_assert( bcio::char_to_symbol('x') == 29, "bcio::char_to_symbol('x') != 29");
   bcio_assert( bcio::char_to_symbol('y') == 30, "bcio::char_to_symbol('y') != 30");
   bcio_assert( bcio::char_to_symbol('z') == 31, "bcio::char_to_symbol('z') != 31");

   for(unsigned char i = 0; i<255; i++) {
      if((i >= 'a' && i <= 'z') || (i >= '1' || i <= '5')) continue;
      bcio_assert( bcio::char_to_symbol((char)i) == 0, "bcio::char_to_symbol() != 0");
   }
}

void test_types::string_to_name() {

   bcio_assert( bcio::string_to_name("a") == N(a) , "bcio::string_to_name(a)" );
   bcio_assert( bcio::string_to_name("ba") == N(ba) , "bcio::string_to_name(ba)" );
   bcio_assert( bcio::string_to_name("cba") == N(cba) , "bcio::string_to_name(cba)" );
   bcio_assert( bcio::string_to_name("dcba") == N(dcba) , "bcio::string_to_name(dcba)" );
   bcio_assert( bcio::string_to_name("edcba") == N(edcba) , "bcio::string_to_name(edcba)" );
   bcio_assert( bcio::string_to_name("fedcba") == N(fedcba) , "bcio::string_to_name(fedcba)" );
   bcio_assert( bcio::string_to_name("gfedcba") == N(gfedcba) , "bcio::string_to_name(gfedcba)" );
   bcio_assert( bcio::string_to_name("hgfedcba") == N(hgfedcba) , "bcio::string_to_name(hgfedcba)" );
   bcio_assert( bcio::string_to_name("ihgfedcba") == N(ihgfedcba) , "bcio::string_to_name(ihgfedcba)" );
   bcio_assert( bcio::string_to_name("jihgfedcba") == N(jihgfedcba) , "bcio::string_to_name(jihgfedcba)" );
   bcio_assert( bcio::string_to_name("kjihgfedcba") == N(kjihgfedcba) , "bcio::string_to_name(kjihgfedcba)" );
   bcio_assert( bcio::string_to_name("lkjihgfedcba") == N(lkjihgfedcba) , "bcio::string_to_name(lkjihgfedcba)" );
   bcio_assert( bcio::string_to_name("mlkjihgfedcba") == N(mlkjihgfedcba) , "bcio::string_to_name(mlkjihgfedcba)" );
   bcio_assert( bcio::string_to_name("mlkjihgfedcba1") == N(mlkjihgfedcba2) , "bcio::string_to_name(mlkjihgfedcba2)" );
   bcio_assert( bcio::string_to_name("mlkjihgfedcba55") == N(mlkjihgfedcba14) , "bcio::string_to_name(mlkjihgfedcba14)" );

   bcio_assert( bcio::string_to_name("azAA34") == N(azBB34) , "bcio::string_to_name N(azBB34)" );
   bcio_assert( bcio::string_to_name("AZaz12Bc34") == N(AZaz12Bc34) , "bcio::string_to_name AZaz12Bc34" );
   bcio_assert( bcio::string_to_name("AAAAAAAAAAAAAAA") == bcio::string_to_name("BBBBBBBBBBBBBDDDDDFFFGG") , "bcio::string_to_name BBBBBBBBBBBBBDDDDDFFFGG" );
}

void test_types::name_class() {

   bcio_assert( bcio::name{bcio::string_to_name("azAA34")}.value == N(azAA34), "bcio::name != N(azAA34)" );
   bcio_assert( bcio::name{bcio::string_to_name("AABBCC")}.value == 0, "bcio::name != N(0)" );
   bcio_assert( bcio::name{bcio::string_to_name("AA11")}.value == N(AA11), "bcio::name != N(AA11)" );
   bcio_assert( bcio::name{bcio::string_to_name("11AA")}.value == N(11), "bcio::name != N(11)" );
   bcio_assert( bcio::name{bcio::string_to_name("22BBCCXXAA")}.value == N(22), "bcio::name != N(22)" );
   bcio_assert( bcio::name{bcio::string_to_name("AAAbbcccdd")} == bcio::name{bcio::string_to_name("AAAbbcccdd")}, "bcio::name == bcio::name" );

   uint64_t tmp = bcio::name{bcio::string_to_name("11bbcccdd")};
   bcio_assert(N(11bbcccdd) == tmp, "N(11bbcccdd) == tmp");
}
