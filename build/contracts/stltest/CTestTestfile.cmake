# CMake generated Testfile for 
# Source directory: /work/bc_install/bc/contracts/stltest
# Build directory: /work/bc_install/bc/build/contracts/stltest
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_stltest_abi "/work/bc_install/bc/build/scripts/abi_is_json.py" "stltest.abi")
