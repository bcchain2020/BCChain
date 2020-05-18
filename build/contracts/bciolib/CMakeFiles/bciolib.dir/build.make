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

# Utility rule file for bciolib.

# Include the progress variables for this target.
include contracts/bciolib/CMakeFiles/bciolib.dir/progress.make

contracts/bciolib/CMakeFiles/bciolib: contracts/bciolib/bciolib.bc


contracts/bciolib/bciolib.bc: contracts/bciolib/bciolib.cpp.bc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking LLVM bitcode library bciolib.bc"
	cd /work/bc_install/bc/build/contracts/bciolib && /root/opt/wasm/bin/llvm-link -o /work/bc_install/bc/build/contracts/bciolib/bciolib.bc bciolib.cpp.bc

contracts/bciolib/bciolib.cpp.bc: ../contracts/bciolib/bciolib.cpp
contracts/bciolib/bciolib.cpp.bc: ../contracts/bciolib/bciolib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building LLVM bitcode bciolib.cpp.bc"
	cd /work/bc_install/bc/build/contracts/bciolib && /root/opt/wasm/bin/clang -emit-llvm -O3 --std=c++14 --target=wasm32 -ffreestanding -nostdlib -nostdlibinc -DBOOST_DISABLE_ASSERTS -DBOOST_EXCEPTION_DISABLE -fno-threadsafe-statics -fno-rtti -fno-exceptions -c /work/bc_install/bc/contracts/bciolib/bciolib.cpp -o bciolib.cpp.bc -Weverything -Wno-c++98-compat -Wno-old-style-cast -Wno-vla -Wno-vla-extension -Wno-c++98-compat-pedantic -Wno-missing-prototypes -Wno-missing-variable-declarations -Wno-packed -Wno-padded -Wno-c99-extensions -Wno-documentation-unknown-command -I /work/bc_install/bc/contracts -I /work/bc_install/bc/build/contracts -I /work/bc_install/bc/externals/magic_get/include -I /work/bc_install/bc/externals/magic_get/include -isystem /work/bc_install/bc/contracts/libc++/upstream/include -isystem /work/bc_install/bc/contracts/musl/upstream/include -isystem /root/opt/boost/include

bciolib: contracts/bciolib/CMakeFiles/bciolib
bciolib: contracts/bciolib/bciolib.bc
bciolib: contracts/bciolib/bciolib.cpp.bc
bciolib: contracts/bciolib/CMakeFiles/bciolib.dir/build.make

.PHONY : bciolib

# Rule to build all files generated by this target.
contracts/bciolib/CMakeFiles/bciolib.dir/build: bciolib

.PHONY : contracts/bciolib/CMakeFiles/bciolib.dir/build

contracts/bciolib/CMakeFiles/bciolib.dir/clean:
	cd /work/bc_install/bc/build/contracts/bciolib && $(CMAKE_COMMAND) -P CMakeFiles/bciolib.dir/cmake_clean.cmake
.PHONY : contracts/bciolib/CMakeFiles/bciolib.dir/clean

contracts/bciolib/CMakeFiles/bciolib.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/contracts/bciolib /work/bc_install/bc/build /work/bc_install/bc/build/contracts/bciolib /work/bc_install/bc/build/contracts/bciolib/CMakeFiles/bciolib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/bciolib/CMakeFiles/bciolib.dir/depend
