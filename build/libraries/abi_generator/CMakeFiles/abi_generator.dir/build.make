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
include libraries/abi_generator/CMakeFiles/abi_generator.dir/depend.make

# Include the progress variables for this target.
include libraries/abi_generator/CMakeFiles/abi_generator.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/abi_generator/CMakeFiles/abi_generator.dir/flags.make

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o: libraries/abi_generator/CMakeFiles/abi_generator.dir/flags.make
libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o: ../libraries/abi_generator/abi_generator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o"
	cd /work/bc_install/bc/build/libraries/abi_generator && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/abi_generator.dir/abi_generator.cpp.o -c /work/bc_install/bc/libraries/abi_generator/abi_generator.cpp

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/abi_generator.dir/abi_generator.cpp.i"
	cd /work/bc_install/bc/build/libraries/abi_generator && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/libraries/abi_generator/abi_generator.cpp > CMakeFiles/abi_generator.dir/abi_generator.cpp.i

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/abi_generator.dir/abi_generator.cpp.s"
	cd /work/bc_install/bc/build/libraries/abi_generator && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/libraries/abi_generator/abi_generator.cpp -o CMakeFiles/abi_generator.dir/abi_generator.cpp.s

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.requires:

.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.requires

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.provides: libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.requires
	$(MAKE) -f libraries/abi_generator/CMakeFiles/abi_generator.dir/build.make libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.provides.build
.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.provides

libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.provides.build: libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o


# Object files for target abi_generator
abi_generator_OBJECTS = \
"CMakeFiles/abi_generator.dir/abi_generator.cpp.o"

# External object files for target abi_generator
abi_generator_EXTERNAL_OBJECTS =

libraries/abi_generator/libabi_generator.a: libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o
libraries/abi_generator/libabi_generator.a: libraries/abi_generator/CMakeFiles/abi_generator.dir/build.make
libraries/abi_generator/libabi_generator.a: libraries/abi_generator/CMakeFiles/abi_generator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libabi_generator.a"
	cd /work/bc_install/bc/build/libraries/abi_generator && $(CMAKE_COMMAND) -P CMakeFiles/abi_generator.dir/cmake_clean_target.cmake
	cd /work/bc_install/bc/build/libraries/abi_generator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/abi_generator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/abi_generator/CMakeFiles/abi_generator.dir/build: libraries/abi_generator/libabi_generator.a

.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/build

libraries/abi_generator/CMakeFiles/abi_generator.dir/requires: libraries/abi_generator/CMakeFiles/abi_generator.dir/abi_generator.cpp.o.requires

.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/requires

libraries/abi_generator/CMakeFiles/abi_generator.dir/clean:
	cd /work/bc_install/bc/build/libraries/abi_generator && $(CMAKE_COMMAND) -P CMakeFiles/abi_generator.dir/cmake_clean.cmake
.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/clean

libraries/abi_generator/CMakeFiles/abi_generator.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/libraries/abi_generator /work/bc_install/bc/build /work/bc_install/bc/build/libraries/abi_generator /work/bc_install/bc/build/libraries/abi_generator/CMakeFiles/abi_generator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/abi_generator/CMakeFiles/abi_generator.dir/depend

