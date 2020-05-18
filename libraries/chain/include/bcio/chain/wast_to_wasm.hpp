/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#pragma once
#include <vector>
#include <string>

namespace bcio { namespace chain {

std::vector<uint8_t> wast_to_wasm( const std::string& wast );
std::string  wasm_to_wast( const std::vector<uint8_t>& wasm, bool strip_names );
std::string  wasm_to_wast( const uint8_t* data, uint64_t size, bool strip_names );

} } /// bcio::chain
