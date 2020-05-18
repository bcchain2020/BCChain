# CMake generated Testfile for 
# Source directory: /work/bc_install/bc/contracts/proxy
# Build directory: /work/bc_install/bc/build/contracts/proxy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_proxy_abi "/work/bc_install/bc/build/scripts/abi_is_json.py" "/work/bc_install/bc/contracts/proxy/proxy.abi")
