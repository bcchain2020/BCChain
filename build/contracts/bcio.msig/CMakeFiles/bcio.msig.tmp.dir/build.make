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
include contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/flags.make

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/flags.make
contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o: ../contracts/bcio.msig/bcio.msig.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o"
	cd /work/bc_install/bc/build/contracts/bcio.msig && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o -c /work/bc_install/bc/contracts/bcio.msig/bcio.msig.cpp

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.i"
	cd /work/bc_install/bc/build/contracts/bcio.msig && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/contracts/bcio.msig/bcio.msig.cpp > CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.i

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.s"
	cd /work/bc_install/bc/build/contracts/bcio.msig && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/contracts/bcio.msig/bcio.msig.cpp -o CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.s

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.requires:

.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.requires

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.provides: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.requires
	$(MAKE) -f contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/build.make contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.provides.build
.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.provides

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.provides.build: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o


# Object files for target bcio.msig.tmp
bcio_msig_tmp_OBJECTS = \
"CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o"

# External object files for target bcio.msig.tmp
bcio_msig_tmp_EXTERNAL_OBJECTS =

contracts/bcio.msig/bcio.msig.tmp: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o
contracts/bcio.msig/bcio.msig.tmp: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/build.make
contracts/bcio.msig/bcio.msig.tmp: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bcio.msig.tmp"
	cd /work/bc_install/bc/build/contracts/bcio.msig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcio.msig.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/build: contracts/bcio.msig/bcio.msig.tmp

.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/build

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/requires: contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/bcio.msig.cpp.o.requires

.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/requires

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/clean:
	cd /work/bc_install/bc/build/contracts/bcio.msig && $(CMAKE_COMMAND) -P CMakeFiles/bcio.msig.tmp.dir/cmake_clean.cmake
.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/clean

contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/contracts/bcio.msig /work/bc_install/bc/build /work/bc_install/bc/build/contracts/bcio.msig /work/bc_install/bc/build/contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/bcio.msig/CMakeFiles/bcio.msig.tmp.dir/depend
