# CMake generated Testfile for 
# Source directory: /work/bc_install/bc/unittests
# Build directory: /work/bc_install/bc/build/unittests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(unit_test_wavm "/work/bc_install/bc/build/unittests/unit_test" "-t" "!wasm_tests/weighted_cpu_limit_tests" "--report_level=detailed" "--color_output" "--catch_system_errors=no" "--" "--wavm")
add_test(unit_test_wabt "/work/bc_install/bc/build/unittests/unit_test" "-t" "!wasm_tests/weighted_cpu_limit_tests" "--report_level=detailed" "--color_output" "--" "--wabt")
subdirs("contracts")
