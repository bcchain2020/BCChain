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
include contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/flags.make

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/flags.make
contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o: ../contracts/bcio.bios/bcio.bios.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o"
	cd /work/bc_install/bc/build/contracts/bcio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o -c /work/bc_install/bc/contracts/bcio.bios/bcio.bios.cpp

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.i"
	cd /work/bc_install/bc/build/contracts/bcio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/contracts/bcio.bios/bcio.bios.cpp > CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.i

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.s"
	cd /work/bc_install/bc/build/contracts/bcio.bios && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/contracts/bcio.bios/bcio.bios.cpp -o CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.s

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.requires:

.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.requires

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.provides: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.requires
	$(MAKE) -f contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/build.make contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.provides.build
.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.provides

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.provides.build: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o


# Object files for target bcio.bios.tmp
bcio_bios_tmp_OBJECTS = \
"CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o"

# External object files for target bcio.bios.tmp
bcio_bios_tmp_EXTERNAL_OBJECTS =

contracts/bcio.bios/bcio.bios.tmp: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o
contracts/bcio.bios/bcio.bios.tmp: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/build.make
contracts/bcio.bios/bcio.bios.tmp: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bcio.bios.tmp"
	cd /work/bc_install/bc/build/contracts/bcio.bios && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcio.bios.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/build: contracts/bcio.bios/bcio.bios.tmp

.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/build

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/requires: contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/bcio.bios.cpp.o.requires

.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/requires

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/clean:
	cd /work/bc_install/bc/build/contracts/bcio.bios && $(CMAKE_COMMAND) -P CMakeFiles/bcio.bios.tmp.dir/cmake_clean.cmake
.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/clean

contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/contracts/bcio.bios /work/bc_install/bc/build /work/bc_install/bc/build/contracts/bcio.bios /work/bc_install/bc/build/contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/bcio.bios/CMakeFiles/bcio.bios.tmp.dir/depend

