#! /bin/bash

binaries=(clbc
          bcio-abigen
          bcio-launcher
          bcio-s2wasm
          bcio-wast2wasm
          bciocpp
          kbcd
          nodbc
          bcio-applesdemo)

if [ -d "/usr/local/bcio" ]; then
   printf "\tDo you wish to remove this install? (requires sudo)\n"
   select yn in "Yes" "No"; do
      case $yn in
         [Yy]* )
            if [ "$(id -u)" -ne 0 ]; then
               printf "\n\tThis requires sudo, please run ./bcio_uninstall.sh with sudo\n\n"
               exit -1
            fi

            pushd /usr/local &> /dev/null
            rm -rf bcio
            pushd bin &> /dev/null
            for binary in ${binaries[@]}; do
               rm ${binary}
            done
            # Handle cleanup of directories created from installation
            if [ "$1" == "--full" ]; then
               if [ -d ~/Library/Application\ Support/bcio ]; then rm -rf ~/Library/Application\ Support/bcio; fi # Mac OS
               if [ -d ~/.local/share/bcio ]; then rm -rf ~/.local/share/bcio; fi # Linux
            fi
            popd &> /dev/null
            break;;
         [Nn]* )
            printf "\tAborting uninstall\n\n"
            exit -1;;
      esac
   done
fi
