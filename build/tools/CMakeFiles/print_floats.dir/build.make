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
include tools/CMakeFiles/print_floats.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/print_floats.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/print_floats.dir/flags.make

tools/CMakeFiles/print_floats.dir/print_floats.cpp.o: tools/CMakeFiles/print_floats.dir/flags.make
tools/CMakeFiles/print_floats.dir/print_floats.cpp.o: ../tools/print_floats.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/print_floats.dir/print_floats.cpp.o"
	cd /work/bc_install/bc/build/tools && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/print_floats.dir/print_floats.cpp.o -c /work/bc_install/bc/tools/print_floats.cpp

tools/CMakeFiles/print_floats.dir/print_floats.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/print_floats.dir/print_floats.cpp.i"
	cd /work/bc_install/bc/build/tools && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/tools/print_floats.cpp > CMakeFiles/print_floats.dir/print_floats.cpp.i

tools/CMakeFiles/print_floats.dir/print_floats.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/print_floats.dir/print_floats.cpp.s"
	cd /work/bc_install/bc/build/tools && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/tools/print_floats.cpp -o CMakeFiles/print_floats.dir/print_floats.cpp.s

tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.requires:

.PHONY : tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.requires

tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.provides: tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/print_floats.dir/build.make tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.provides.build
.PHONY : tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.provides

tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.provides.build: tools/CMakeFiles/print_floats.dir/print_floats.cpp.o


# Object files for target print_floats
print_floats_OBJECTS = \
"CMakeFiles/print_floats.dir/print_floats.cpp.o"

# External object files for target print_floats
print_floats_EXTERNAL_OBJECTS =

tools/print_floats: tools/CMakeFiles/print_floats.dir/print_floats.cpp.o
tools/print_floats: tools/CMakeFiles/print_floats.dir/build.make
tools/print_floats: /root/opt/boost/lib/libboost_thread.a
tools/print_floats: /root/opt/boost/lib/libboost_date_time.a
tools/print_floats: /root/opt/boost/lib/libboost_filesystem.a
tools/print_floats: /root/opt/boost/lib/libboost_system.a
tools/print_floats: /root/opt/boost/lib/libboost_program_options.a
tools/print_floats: /root/opt/boost/lib/libboost_signals.a
tools/print_floats: /root/opt/boost/lib/libboost_serialization.a
tools/print_floats: /root/opt/boost/lib/libboost_chrono.a
tools/print_floats: /root/opt/boost/lib/libboost_unit_test_framework.a
tools/print_floats: /root/opt/boost/lib/libboost_context.a
tools/print_floats: /root/opt/boost/lib/libboost_locale.a
tools/print_floats: /root/opt/boost/lib/libboost_iostreams.a
tools/print_floats: /usr/lib64/libpthread.so
tools/print_floats: tools/CMakeFiles/print_floats.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable print_floats"
	cd /work/bc_install/bc/build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/print_floats.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/print_floats.dir/build: tools/print_floats

.PHONY : tools/CMakeFiles/print_floats.dir/build

tools/CMakeFiles/print_floats.dir/requires: tools/CMakeFiles/print_floats.dir/print_floats.cpp.o.requires

.PHONY : tools/CMakeFiles/print_floats.dir/requires

tools/CMakeFiles/print_floats.dir/clean:
	cd /work/bc_install/bc/build/tools && $(CMAKE_COMMAND) -P CMakeFiles/print_floats.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/print_floats.dir/clean

tools/CMakeFiles/print_floats.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/tools /work/bc_install/bc/build /work/bc_install/bc/build/tools /work/bc_install/bc/build/tools/CMakeFiles/print_floats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/print_floats.dir/depend

