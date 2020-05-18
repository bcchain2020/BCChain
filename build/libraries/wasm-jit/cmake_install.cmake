# Install script for directory: /work/bc_install/bc/libraries/wasm-jit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/bcio")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bcio/include/wasm-jit/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bcio/include/wasm-jit" TYPE DIRECTORY FILES "/work/bc_install/bc/libraries/wasm-jit/Include/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/work/bc_install/bc/build/libraries/wasm-jit/Include/Inline/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/Emscripten/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/IR/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/Logging/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/Platform/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/Programs/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/Runtime/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/WASM/cmake_install.cmake")
  include("/work/bc_install/bc/build/libraries/wasm-jit/Source/WAST/cmake_install.cmake")

endif()

