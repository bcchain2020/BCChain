# CMake generated Testfile for 
# Source directory: /work/bc_install/bc/contracts/tic_tac_toe
# Build directory: /work/bc_install/bc/build/contracts/tic_tac_toe
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_tic_tac_toe_abi "/work/bc_install/bc/build/scripts/abi_is_json.py" "/work/bc_install/bc/contracts/tic_tac_toe/tic_tac_toe.abi")
