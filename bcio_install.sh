#!/bin/bash
##########################################################################
# This is the BCIO automated install script for Linux and Mac OS.
# This file was downloaded from https://github.com/BCIO/bc
#
# Copyright (c) 2017, Respective Authors all rights reserved.
#
# After June 1, 2018 this software is available under the following terms:
# 
# The MIT License
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#
# https://github.com/BCIO/bc/blob/master/LICENSE.txt
##########################################################################

if [ "$(id -u)" -ne 0 ]; then
        printf "\n\tThis requires sudo. Please run with sudo.\n\n"
        exit -1
fi   

   CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
   if [ "${CWD}" != "${PWD}" ]; then
      printf "\\n\\tPlease cd into directory %s to run this script.\\n \\tExiting now.\\n\\n" "${CWD}"
      exit 1
   fi

   BUILD_DIR="${PWD}/build"
   CMAKE_BUILD_TYPE=Release
   TIME_BEGIN=$( date -u +%s )
   INSTALL_PREFIX="/usr/local/bcio"
   VERSION=1.2

   txtbld=$(tput bold)
   bldred=${txtbld}$(tput setaf 1)
   txtrst=$(tput sgr0)

   create_symlink() {
      pushd /usr/local/bin &> /dev/null
      ln -sf ../bcio/bin/$1 $1
      popd &> /dev/null
   }

   create_cmake_symlink() {
      mkdir -p /usr/local/lib/cmake/bcio
      pushd /usr/local/lib/cmake/bcio &> /dev/null
      ln -sf ../../../bcio/lib/cmake/bcio/$1 $1
      popd &> /dev/null
   }

   install_symlinks() {
      printf "\\n\\tInstalling BCIO Binary Symlinks\\n\\n"
      create_symlink "clbc"
      create_symlink "bcio-abigen"
      create_symlink "bcio-launcher"
      create_symlink "bcio-s2wasm"
      create_symlink "bcio-wast2wasm"
      create_symlink "bciocpp"
      create_symlink "kbcd"
      create_symlink "nodbc"
   }

   if [ ! -d "${BUILD_DIR}" ]; then
      printf "\\n\\tError, bcio_build.sh has not ran.  Please run ./bcio_build.sh first!\\n\\n"
      exit -1
   fi

   ${PWD}/scripts/clean_old_install.sh
   if [ $? -ne 0 ]; then
      printf "\\n\\tError occurred while trying to remove old installation!\\n\\n"
      exit -1
   fi

   if ! pushd "${BUILD_DIR}"
   then
      printf "Unable to enter build directory %s.\\n Exiting now.\\n" "${BUILD_DIR}"
      exit 1;
   fi
   
   if ! make install
   then
      printf "\\n\\t>>>>>>>>>>>>>>>>>>>> MAKE installing BCIO has exited with the above error.\\n\\n"
      exit -1
   fi
   popd &> /dev/null 

   install_symlinks   
   create_cmake_symlink "bcio-config.cmake"

   printf "\n\n${bldred}\t _______  _______  _______ _________ _______\n"
   printf '\t  ____ ____ _____ ___ ___  \n'
   printf "\t / ___/ ___|_   _|_ _/ _ \ \n"
   printf "\t| |  _\___ \ | |  | | | | |\n"
   printf "\t| |_| |___) || |  | | |_| |\n"
   printf "\t \____|____/ |_| |___\___/ \n${txtrst}"

   printf "\\tFor more information:\\n"
   printf "\\BCIO website: https://bc.io\\n"
   printf "\\BCIO Telegram channel @ https://t.me/BCProject\\n"
   printf "\\BCIO resources: https://bc.io/resources/\\n"
   printf "\\BCIO Stack Exchange: https://bcio.stackexchange.com\\n"
   printf "\\BCIO wiki: https://github.com/BCIO/bc/wiki\\n\\n\\n"
