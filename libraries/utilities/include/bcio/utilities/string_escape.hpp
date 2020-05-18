/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */
#pragma once

#include <string>

namespace bcio { namespace utilities {

  std::string escape_string_for_c_source_code(const std::string& input);

} } // end namespace bcio::utilities
