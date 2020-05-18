/**
 *  @file
 *  @copyright defined in bc/LICENSE.txt
 */

#include <bcio/utilities/tempdir.hpp>

#include <cstdlib>

namespace bcio { namespace utilities {

fc::path temp_directory_path()
{
   const char* bc_tempdir = getenv("BC_TEMPDIR");
   if( bc_tempdir != nullptr )
      return fc::path( bc_tempdir );
   return fc::temp_directory_path() / "bc-tmp";
}

} } // bcio::utilities
