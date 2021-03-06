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
include programs/kbcd/CMakeFiles/kbcd.dir/depend.make

# Include the progress variables for this target.
include programs/kbcd/CMakeFiles/kbcd.dir/progress.make

# Include the compile flags for this target's objects.
include programs/kbcd/CMakeFiles/kbcd.dir/flags.make

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o: programs/kbcd/CMakeFiles/kbcd.dir/flags.make
programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o: ../programs/kbcd/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o"
	cd /work/bc_install/bc/build/programs/kbcd && /opt/rh/devtoolset-7/root/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kbcd.dir/main.cpp.o -c /work/bc_install/bc/programs/kbcd/main.cpp

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kbcd.dir/main.cpp.i"
	cd /work/bc_install/bc/build/programs/kbcd && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /work/bc_install/bc/programs/kbcd/main.cpp > CMakeFiles/kbcd.dir/main.cpp.i

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kbcd.dir/main.cpp.s"
	cd /work/bc_install/bc/build/programs/kbcd && /opt/rh/devtoolset-7/root/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /work/bc_install/bc/programs/kbcd/main.cpp -o CMakeFiles/kbcd.dir/main.cpp.s

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.requires:

.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.requires

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.provides: programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.requires
	$(MAKE) -f programs/kbcd/CMakeFiles/kbcd.dir/build.make programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.provides.build
.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.provides

programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.provides.build: programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o


# Object files for target kbcd
kbcd_OBJECTS = \
"CMakeFiles/kbcd.dir/main.cpp.o"

# External object files for target kbcd
kbcd_EXTERNAL_OBJECTS =

programs/kbcd/kbcd: programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o
programs/kbcd/kbcd: programs/kbcd/CMakeFiles/kbcd.dir/build.make
programs/kbcd/kbcd: libraries/appbase/libappbase.a
programs/kbcd/kbcd: plugins/wallet_api_plugin/libwallet_api_plugin.a
programs/kbcd/kbcd: plugins/wallet_plugin/libwallet_plugin.a
programs/kbcd/kbcd: plugins/http_plugin/libhttp_plugin.a
programs/kbcd/kbcd: libraries/chain/libbcio_chain.a
programs/kbcd/kbcd: libraries/fc/libfc.a
programs/kbcd/kbcd: libraries/appbase/libappbase.a
programs/kbcd/kbcd: libraries/utilities/libbc_utilities.a
programs/kbcd/kbcd: libraries/chainbase/libchainbase.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/WAST/libWAST.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/WASM/libWASM.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/Runtime/libRuntime.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/IR/libIR.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/Logging/libLogging.a
programs/kbcd/kbcd: libraries/wasm-jit/Source/Platform/libPlatform.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMPasses.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMipo.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMInstrumentation.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMVectorize.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMIRReader.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMAsmParser.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMLinker.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMMCJIT.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMExecutionEngine.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMRuntimeDyld.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMDebugInfoDWARF.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86CodeGen.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMAsmPrinter.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMDebugInfoCodeView.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMDebugInfoMSF.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMGlobalISel.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMSelectionDAG.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMCodeGen.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMScalarOpts.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMInstCombine.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMBitWriter.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMTransformUtils.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMTarget.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMAnalysis.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMProfileData.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86AsmParser.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86Desc.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86AsmPrinter.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86Utils.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMObject.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMMCParser.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMBitReader.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMCore.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86Disassembler.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMX86Info.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMMCDisassembler.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMMC.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMSupport.a
programs/kbcd/kbcd: /root/opt/wasm/lib/libLLVMDemangle.a
programs/kbcd/kbcd: libraries/softfloat/libsoftfloat.a
programs/kbcd/kbcd: libraries/builtins/libbuiltins.a
programs/kbcd/kbcd: libraries/wabt/libwabt.a
programs/kbcd/kbcd: libraries/fc/libfc.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_thread.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_date_time.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_filesystem.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_system.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_program_options.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_signals.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_serialization.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_chrono.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_unit_test_framework.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_context.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_locale.a
programs/kbcd/kbcd: /root/opt/boost/lib/libboost_iostreams.a
programs/kbcd/kbcd: /usr/lib64/libpthread.so
programs/kbcd/kbcd: /usr/lib64/libssl.so
programs/kbcd/kbcd: /usr/lib64/libcrypto.so
programs/kbcd/kbcd: /usr/lib64/libz.so
programs/kbcd/kbcd: libraries/fc/secp256k1/libsecp256k1.a
programs/kbcd/kbcd: /usr/lib64/libgmp.so
programs/kbcd/kbcd: programs/kbcd/CMakeFiles/kbcd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/bc_install/bc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kbcd"
	cd /work/bc_install/bc/build/programs/kbcd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kbcd.dir/link.txt --verbose=$(VERBOSE)
	cd /work/bc_install/bc/build/programs/kbcd && mkdir -p /work/bc_install/bc/build/bin
	cd /work/bc_install/bc/build/programs/kbcd && /root/opt/cmake-3.10.2/bin/cmake -E copy /work/bc_install/bc/build/programs/kbcd/kbcd /work/bc_install/bc/build/bin/

# Rule to build all files generated by this target.
programs/kbcd/CMakeFiles/kbcd.dir/build: programs/kbcd/kbcd

.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/build

programs/kbcd/CMakeFiles/kbcd.dir/requires: programs/kbcd/CMakeFiles/kbcd.dir/main.cpp.o.requires

.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/requires

programs/kbcd/CMakeFiles/kbcd.dir/clean:
	cd /work/bc_install/bc/build/programs/kbcd && $(CMAKE_COMMAND) -P CMakeFiles/kbcd.dir/cmake_clean.cmake
.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/clean

programs/kbcd/CMakeFiles/kbcd.dir/depend:
	cd /work/bc_install/bc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/bc_install/bc /work/bc_install/bc/programs/kbcd /work/bc_install/bc/build /work/bc_install/bc/build/programs/kbcd /work/bc_install/bc/build/programs/kbcd/CMakeFiles/kbcd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/kbcd/CMakeFiles/kbcd.dir/depend

