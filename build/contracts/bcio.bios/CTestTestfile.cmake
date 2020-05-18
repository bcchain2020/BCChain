# CMake generated Testfile for 
# Source directory: /work/bc_install/bc/contracts/bcio.bios
# Build directory: /work/bc_install/bc/build/contracts/bcio.bios
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_bcio.bios_abi "/work/bc_install/bc/build/scripts/abi_is_json.py" "/work/bc_install/bc/contracts/bcio.bios/bcio.bios.abi")
