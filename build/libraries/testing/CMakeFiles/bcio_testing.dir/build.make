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
include libraries/testing/CMakeFiles/bcio_testing.dir/depend.make

# Include the progress variables for this target.
include libraries/testing/CMakeFiles/bcio_testing.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/testing/CMakeFiles/bcio_testing.dir/flags.make

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o: libraries/testing/CMakeFiles/bcio_testing.dir/flags.make
libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o: ../libraries/testing/tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcio_testing.dir/tester.cpp.o -c /work/bc_install/bc/libraries/testing/tester.cpp

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcio_testing.dir/tester.cpp.i"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/libraries/testing/tester.cpp > CMakeFiles/bcio_testing.dir/tester.cpp.i

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcio_testing.dir/tester.cpp.s"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/libraries/testing/tester.cpp -o CMakeFiles/bcio_testing.dir/tester.cpp.s

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.requires:

.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.requires

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.provides: libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.requires
	$(MAKE) -f libraries/testing/CMakeFiles/bcio_testing.dir/build.make libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.provides.build
.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.provides

libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.provides.build: libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o


libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o: libraries/testing/CMakeFiles/bcio_testing.dir/flags.make
libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o: ../libraries/testing/tester_network.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcio_testing.dir/tester_network.cpp.o -c /work/bc_install/bc/libraries/testing/tester_network.cpp

libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcio_testing.dir/tester_network.cpp.i"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/libraries/testing/tester_network.cpp > CMakeFiles/bcio_testing.dir/tester_network.cpp.i

libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcio_testing.dir/tester_network.cpp.s"
	cd /work/bc_install/bc/build/libraries/testing && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/libraries/testing/tester_network.cpp -o CMakeFiles/bcio_testing.dir/tester_network.cpp.s

libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.requires:

.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.requires

libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.provides: libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.requires
	$(MAKE) -f libraries/testing/CMakeFiles/bcio_testing.dir/build.make libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.provides.build
.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.provides

libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.provides.build: libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o


# Object files for target bcio_testing
bcio_testing_OBJECTS = \
"CMakeFiles/bcio_testing.dir/tester.cpp.o" \
"CMakeFiles/bcio_testing.dir/tester_network.cpp.o"

# External object files for target bcio_testing
bcio_testing_EXTERNAL_OBJECTS =

libraries/testing/libbcio_testing.a: libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o
libraries/testing/libbcio_testing.a: libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o
libraries/testing/libbcio_testing.a: libraries/testing/CMakeFiles/bcio_testing.dir/build.make
libraries/testing/libbcio_testing.a: libraries/testing/CMakeFiles/bcio_testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libbcio_testing.a"
	cd /work/bc_install/bc/build/libraries/testing && $(CMAKE_COMMAND) -P CMakeFiles/bcio_testing.dir/cmake_clean_target.cmake
	cd /work/bc_install/bc/build/libraries/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcio_testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/testing/CMakeFiles/bcio_testing.dir/build: libraries/testing/libbcio_testing.a

.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/build

libraries/testing/CMakeFiles/bcio_testing.dir/requires: libraries/testing/CMakeFiles/bcio_testing.dir/tester.cpp.o.requires
libraries/testing/CMakeFiles/bcio_testing.dir/requires: libraries/testing/CMakeFiles/bcio_testing.dir/tester_network.cpp.o.requires

.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/requires

libraries/testing/CMakeFiles/bcio_testing.dir/clean:
	cd /work/bc_install/bc/build/libraries/testing && $(CMAKE_COMMAND) -P CMakeFiles/bcio_testing.dir/cmake_clean.cmake
.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/clean

libraries/testing/CMakeFiles/bcio_testing.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/libraries/testing /work/bc_install/bc/build /work/bc_install/bc/build/libraries/testing /work/bc_install/bc/build/libraries/testing/CMakeFiles/bcio_testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/testing/CMakeFiles/bcio_testing.dir/depend

