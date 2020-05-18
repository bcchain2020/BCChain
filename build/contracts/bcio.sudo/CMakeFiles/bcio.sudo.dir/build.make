# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /root/opt/cmake-3.10.2/bin/cmake

# The command to remove a file.
RM = /root/opt/cmake-3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /work/bc_install/bc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/bc_install/bc/build

# Utility rule file for bcio.sudo.

# Include the progress variables for this target.
include contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/progress.make

contracts/bcio.sudo/CMakeFiles/bcio.sudo: contracts/bcio.sudo/bcio.sudo.wast.hpp
contracts/bcio.sudo/CMakeFiles/bcio.sudo: contracts/bcio.sudo/bcio.sudo.abi.hpp
contracts/bcio.sudo/CMakeFiles/bcio.sudo: contracts/bcio.sudo/bcio.sudo.wasm


contracts/bcio.sudo/bcio.sudo.wast.hpp: contracts/bcio.sudo/bcio.sudo.wast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating bcio.sudo.wast.hpp"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && echo "const char* const bcio_sudo_wast = R\"=====(" > /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast.hpp
	cd /work/bc_install/bc/build/contracts/bcio.sudo && cat /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast >> /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast.hpp
	cd /work/bc_install/bc/build/contracts/bcio.sudo && echo ")=====\";" >> /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast.hpp

contracts/bcio.sudo/bcio.sudo.abi.hpp: contracts/bcio.sudo/bcio.sudo.abi
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating bcio.sudo.abi.hpp"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && echo "const char* const bcio_sudo_abi = R\"=====(" > /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.abi.hpp
	cd /work/bc_install/bc/build/contracts/bcio.sudo && cat /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.abi >> /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.abi.hpp
	cd /work/bc_install/bc/build/contracts/bcio.sudo && echo ")=====\";" >> /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.abi.hpp

contracts/bcio.sudo/bcio.sudo.wasm: contracts/bcio.sudo/bcio.sudo.wast.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating WASM bcio.sudo.wasm"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && /work/bc_install/bc/build/libraries/wasm-jit/Source/Programs/bcio-wast2wasm /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wasm -n

contracts/bcio.sudo/bcio.sudo.wast: contracts/bcio.sudo/bcio.sudo.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating WAST bcio.sudo.wast"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && /work/bc_install/bc/build/externals/binaryen/bin/bcio-s2wasm -o /work/bc_install/bc/build/contracts/bcio.sudo/bcio.sudo.wast -s 10240 bcio.sudo.s

contracts/bcio.sudo/bcio.sudo.s: contracts/bcio.sudo/bcio.sudo.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating textual assembly bcio.sudo.s"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && /root/opt/wasm/bin/llc -thread-model=single -asm-verbose=false -o bcio.sudo.s bcio.sudo.bc

contracts/bcio.sudo/bcio.sudo.bc: contracts/bcio.sudo/bcio.sudo.cpp.bc
contracts/bcio.sudo/bcio.sudo.bc: contracts/libc++/libc++.bc
contracts/bcio.sudo/bcio.sudo.bc: contracts/musl/libc.bc
contracts/bcio.sudo/bcio.sudo.bc: contracts/bciolib/bciolib.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking LLVM bitcode executable bcio.sudo.bc"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && /root/opt/wasm/bin/llvm-link -only-needed -o bcio.sudo.bc bcio.sudo.cpp.bc /work/bc_install/bc/build/contracts/libc++/libc++.bc /work/bc_install/bc/build/contracts/musl/libc.bc /work/bc_install/bc/build/contracts/bciolib/bciolib.bc

contracts/bcio.sudo/bcio.sudo.cpp.bc: ../contracts/bcio.sudo/bcio.sudo.cpp
contracts/bcio.sudo/bcio.sudo.cpp.bc: ../contracts/bcio.sudo/bcio.sudo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building LLVM bitcode bcio.sudo.cpp.bc"
	cd /work/bc_install/bc/build/contracts/bcio.sudo && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /work/bc_install/bc/contracts/bcio.sudo/bcio.sudo.cpp -o bcio.sudo.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /work/bc_install/bc/contracts -I /work/bc_install/bc/build/contracts -I /work/bc_install/bc/externals/magic_get/include -isystem /work/bc_install/bc/contracts/libc++/upstream/include -isystem /work/bc_install/bc/contracts/musl/upstream/include -isystem /root/opt/boost/include

bcio.sudo: contracts/bcio.sudo/CMakeFiles/bcio.sudo
bcio.sudo: contracts/bcio.sudo/bcio.sudo.wast.hpp
bcio.sudo: contracts/bcio.sudo/bcio.sudo.abi.hpp
bcio.sudo: contracts/bcio.sudo/bcio.sudo.wasm
bcio.sudo: contracts/bcio.sudo/bcio.sudo.wast
bcio.sudo: contracts/bcio.sudo/bcio.sudo.s
bcio.sudo: contracts/bcio.sudo/bcio.sudo.bc
bcio.sudo: contracts/bcio.sudo/bcio.sudo.cpp.bc
bcio.sudo: contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/build.make

.PHONY : bcio.sudo

# Rule to build all files generated by this target.
contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/build: bcio.sudo

.PHONY : contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/build

contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/clean:
	cd /work/bc_install/bc/build/contracts/bcio.sudo && $(CMAKE_COMMAND) -P CMakeFiles/bcio.sudo.dir/cmake_clean.cmake
.PHONY : contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/clean

contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/contracts/bcio.sudo /work/bc_install/bc/build /work/bc_install/bc/build/contracts/bcio.sudo /work/bc_install/bc/build/contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/bcio.sudo/CMakeFiles/bcio.sudo.dir/depend

