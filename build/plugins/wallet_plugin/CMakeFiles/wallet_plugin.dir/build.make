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
include plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/depend.make

# Include the progress variables for this target.
include plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/flags.make

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/flags.make
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o: ../plugins/wallet_plugin/wallet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wallet_plugin.dir/wallet.cpp.o -c /work/bc_install/bc/plugins/wallet_plugin/wallet.cpp

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wallet_plugin.dir/wallet.cpp.i"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/plugins/wallet_plugin/wallet.cpp > CMakeFiles/wallet_plugin.dir/wallet.cpp.i

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wallet_plugin.dir/wallet.cpp.s"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/plugins/wallet_plugin/wallet.cpp -o CMakeFiles/wallet_plugin.dir/wallet.cpp.s

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.requires:

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.requires

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.provides: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.requires
	$(MAKE) -f plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build.make plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.provides.build
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.provides

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.provides.build: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o


plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/flags.make
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o: ../plugins/wallet_plugin/wallet_plugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o -c /work/bc_install/bc/plugins/wallet_plugin/wallet_plugin.cpp

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.i"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/plugins/wallet_plugin/wallet_plugin.cpp > CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.i

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.s"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/plugins/wallet_plugin/wallet_plugin.cpp -o CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.s

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.requires:

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.requires

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.provides: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.requires
	$(MAKE) -f plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build.make plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.provides.build
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.provides

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.provides.build: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o


plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/flags.make
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o: ../plugins/wallet_plugin/wallet_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o -c /work/bc_install/bc/plugins/wallet_plugin/wallet_manager.cpp

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.i"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/plugins/wallet_plugin/wallet_manager.cpp > CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.i

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.s"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/plugins/wallet_plugin/wallet_manager.cpp -o CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.s

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.requires:

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.requires

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.provides: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.requires
	$(MAKE) -f plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build.make plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.provides.build
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.provides

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.provides.build: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o


plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/flags.make
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o: ../plugins/wallet_plugin/yubihsm_wallet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o -c /work/bc_install/bc/plugins/wallet_plugin/yubihsm_wallet.cpp

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.i"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/plugins/wallet_plugin/yubihsm_wallet.cpp > CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.i

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.s"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/plugins/wallet_plugin/yubihsm_wallet.cpp -o CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.s

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.requires:

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.requires

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.provides: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.requires
	$(MAKE) -f plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build.make plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.provides.build
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.provides

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.provides.build: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o


# Object files for target wallet_plugin
wallet_plugin_OBJECTS = \
"CMakeFiles/wallet_plugin.dir/wallet.cpp.o" \
"CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o" \
"CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o" \
"CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o"

# External object files for target wallet_plugin
wallet_plugin_EXTERNAL_OBJECTS =

plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o
plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o
plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o
plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o
plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build.make
plugins/wallet_plugin/libwallet_plugin.a: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libwallet_plugin.a"
	cd /work/bc_install/bc/build/plugins/wallet_plugin && $(CMAKE_COMMAND) -P CMakeFiles/wallet_plugin.dir/cmake_clean_target.cmake
	cd /work/bc_install/bc/build/plugins/wallet_plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wallet_plugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build: plugins/wallet_plugin/libwallet_plugin.a

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/build

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/requires: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet.cpp.o.requires
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/requires: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_plugin.cpp.o.requires
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/requires: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/wallet_manager.cpp.o.requires
plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/requires: plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/yubihsm_wallet.cpp.o.requires

.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/requires

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/clean:
	cd /work/bc_install/bc/build/plugins/wallet_plugin && $(CMAKE_COMMAND) -P CMakeFiles/wallet_plugin.dir/cmake_clean.cmake
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/clean

plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/plugins/wallet_plugin /work/bc_install/bc/build /work/bc_install/bc/build/plugins/wallet_plugin /work/bc_install/bc/build/plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/wallet_plugin/CMakeFiles/wallet_plugin.dir/depend
