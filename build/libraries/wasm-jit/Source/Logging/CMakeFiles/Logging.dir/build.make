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

# Include any dependencies generated for this target.
include libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/depend.make

# Include the progress variables for this target.
include libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/flags.make

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/flags.make
libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o: ../libraries/wasm-jit/Source/Logging/Logging.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o"
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Logging.dir/Logging.cpp.o -c /work/bc_install/bc/libraries/wasm-jit/Source/Logging/Logging.cpp

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Logging.dir/Logging.cpp.i"
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/libraries/wasm-jit/Source/Logging/Logging.cpp > CMakeFiles/Logging.dir/Logging.cpp.i

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Logging.dir/Logging.cpp.s"
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/libraries/wasm-jit/Source/Logging/Logging.cpp -o CMakeFiles/Logging.dir/Logging.cpp.s

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.requires:

.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.requires

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.provides: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.requires
	$(MAKE) -f libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/build.make libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.provides.build
.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.provides

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.provides.build: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o


# Object files for target Logging
Logging_OBJECTS = \
"CMakeFiles/Logging.dir/Logging.cpp.o"

# External object files for target Logging
Logging_EXTERNAL_OBJECTS =

libraries/wasm-jit/Source/Logging/libLogging.a: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o
libraries/wasm-jit/Source/Logging/libLogging.a: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/build.make
libraries/wasm-jit/Source/Logging/libLogging.a: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libLogging.a"
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && $(CMAKE_COMMAND) -P CMakeFiles/Logging.dir/cmake_clean_target.cmake
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Logging.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/build: libraries/wasm-jit/Source/Logging/libLogging.a

.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/build

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/requires: libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/Logging.cpp.o.requires

.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/requires

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/clean:
	cd /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging && $(CMAKE_COMMAND) -P CMakeFiles/Logging.dir/cmake_clean.cmake
.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/clean

libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/libraries/wasm-jit/Source/Logging /work/bc_install/bc/build /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging /work/bc_install/bc/build/libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/wasm-jit/Source/Logging/CMakeFiles/Logging.dir/depend
