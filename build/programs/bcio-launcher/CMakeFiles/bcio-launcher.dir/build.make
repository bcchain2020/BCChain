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
include programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/depend.make

# Include the progress variables for this target.
include programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/progress.make

# Include the compile flags for this target's objects.
include programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/flags.make

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/flags.make
programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o: ../programs/bcio-launcher/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o"
	cd /work/bc_install/bc/build/programs/bcio-launcher && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bcio-launcher.dir/main.cpp.o -c /work/bc_install/bc/programs/bcio-launcher/main.cpp

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bcio-launcher.dir/main.cpp.i"
	cd /work/bc_install/bc/build/programs/bcio-launcher && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/programs/bcio-launcher/main.cpp > CMakeFiles/bcio-launcher.dir/main.cpp.i

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bcio-launcher.dir/main.cpp.s"
	cd /work/bc_install/bc/build/programs/bcio-launcher && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/programs/bcio-launcher/main.cpp -o CMakeFiles/bcio-launcher.dir/main.cpp.s

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.requires:

.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.requires

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.provides: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.requires
	$(MAKE) -f programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/build.make programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.provides.build
.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.provides

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.provides.build: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o


# Object files for target bcio-launcher
bcio__launcher_OBJECTS = \
"CMakeFiles/bcio-launcher.dir/main.cpp.o"

# External object files for target bcio-launcher
bcio__launcher_EXTERNAL_OBJECTS =

programs/bcio-launcher/bcio-launcher: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o
programs/bcio-launcher/bcio-launcher: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/build.make
programs/bcio-launcher/bcio-launcher: libraries/chain/libbcio_chain.a
programs/bcio-launcher/bcio-launcher: libraries/fc/libfc.a
programs/bcio-launcher/bcio-launcher: libraries/utilities/libbc_utilities.a
programs/bcio-launcher/bcio-launcher: libraries/fc/libfc.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_program_options.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_signals.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_serialization.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_context.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_iostreams.a
programs/bcio-launcher/bcio-launcher: /usr/lib64/libssl.so
programs/bcio-launcher/bcio-launcher: /usr/lib64/libcrypto.so
programs/bcio-launcher/bcio-launcher: /usr/lib64/libz.so
programs/bcio-launcher/bcio-launcher: libraries/fc/secp256k1/libsecp256k1.a
programs/bcio-launcher/bcio-launcher: /usr/lib64/libgmp.so
programs/bcio-launcher/bcio-launcher: libraries/chainbase/libchainbase.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_thread.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_date_time.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_filesystem.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_system.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_chrono.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_unit_test_framework.a
programs/bcio-launcher/bcio-launcher: /root/opt/boost/lib/libboost_locale.a
programs/bcio-launcher/bcio-launcher: /usr/lib64/libpthread.so
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/WAST/libWAST.a
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/WASM/libWASM.a
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/Runtime/libRuntime.a
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/IR/libIR.a
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/Logging/libLogging.a
programs/bcio-launcher/bcio-launcher: libraries/wasm-jit/Source/Platform/libPlatform.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMPasses.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMipo.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMInstrumentation.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMVectorize.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMIRReader.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMAsmParser.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMLinker.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMMCJIT.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMExecutionEngine.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMRuntimeDyld.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMDebugInfoDWARF.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86CodeGen.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMAsmPrinter.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMDebugInfoCodeView.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMDebugInfoMSF.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMGlobalISel.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMSelectionDAG.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMCodeGen.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMScalarOpts.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMInstCombine.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMBitWriter.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMTransformUtils.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMTarget.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMAnalysis.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMProfileData.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86AsmParser.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86Desc.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86AsmPrinter.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86Utils.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMObject.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMMCParser.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMBitReader.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMCore.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86Disassembler.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMX86Info.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMMCDisassembler.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMMC.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMSupport.a
programs/bcio-launcher/bcio-launcher: /root/opt/wasm/lib/libLLVMDemangle.a
programs/bcio-launcher/bcio-launcher: libraries/softfloat/libsoftfloat.a
programs/bcio-launcher/bcio-launcher: libraries/builtins/libbuiltins.a
programs/bcio-launcher/bcio-launcher: libraries/wabt/libwabt.a
programs/bcio-launcher/bcio-launcher: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bcio-launcher"
	cd /work/bc_install/bc/build/programs/bcio-launcher && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcio-launcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/build: programs/bcio-launcher/bcio-launcher

.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/build

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/requires: programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/main.cpp.o.requires

.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/requires

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/clean:
	cd /work/bc_install/bc/build/programs/bcio-launcher && $(CMAKE_COMMAND) -P CMakeFiles/bcio-launcher.dir/cmake_clean.cmake
.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/clean

programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/programs/bcio-launcher /work/bc_install/bc/build /work/bc_install/bc/build/programs/bcio-launcher /work/bc_install/bc/build/programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/bcio-launcher/CMakeFiles/bcio-launcher.dir/depend
