#! /bin/bash

if [ -d "/usr/local/include/bcio" ]; then
   printf "\n\tOld bcio install needs to be removed.\n\n"
   printf "\tDo you wish to remove this install? (requires sudo)\n"
   select yn in "Yes" "No"; do
      case $yn in
         [Yy]* )
            if [ "$(id -u)" -ne 0 ]; then
               printf "\n\tThis requires sudo, please run ./scripts/clean_old_install.sh with sudo\n\n"
               exit -1
            fi
            pushd /usr/local &> /dev/null

            pushd include &> /dev/null
            rm -rf appbase chainbase bcio bcio.system bciolib fc libc++ musl &> /dev/null
            popd &> /dev/null

            pushd bin &> /dev/null
            rm clbc bcio-abigen bcio-applesdemo bcio-launcher bcio-s2wasm bcio-wast2wasm bciocpp kbcd nodbc &> /dev/null
            popd &> /dev/null

            libraries=(libbcio_testing
            libbcio_chain
            libfc
            libbinaryen
            libWAST
            libWASM
            libRuntime
            libPlatform
            libIR
            libLogging
            libsoftfloat
            libchainbase
            libappbase
            libbuiltins)
            pushd lib &> /dev/null
            for lib in ${libraries[@]}; do
               rm ${lib}.a ${lib}.dylib ${lib}.so &> /dev/null
            done
            popd &> /dev/null

            pushd etc &> /dev/null
            rm bcio &> /dev/null
            popd &> /dev/null

            pushd share &> /dev/null
            rm bcio &> /dev/null
            popd &> /dev/null

            pushd usr/share &> /dev/null
            rm bcio &> /dev/null
            popd &> /dev/null

            pushd var/lib &> /dev/null
            rm bcio &> /dev/null
            popd &> /dev/null

            pushd var/log &> /dev/null
            rm bcio &> /dev/null
            popd &> /dev/null

            popd &> /dev/null
            break;;
         [Nn]* )
            printf "\tAborting uninstall\n\n"
            exit -1;;
      esac
   done
fi
