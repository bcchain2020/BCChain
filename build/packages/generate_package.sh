#! /bin/bash

VARIANT=$1

VERSION="1.4.4"

BUILD_DIR="/work/bc_install/bc/build"

VENDOR="block.one"
PROJECT="bcio"
DESC="Software for the BC.IO network"
URL="https://github.com/bcio/bc"
EMAIL="support@block.one"

export BUILD_DIR
export VERSION
export VENDOR
export PROJECT
export DESC
export URL
export EMAIL

mkdir tmp

if [[ ${VARIANT} == "brew" ]]; then
   bash generate_bottle.sh
elif [[ ${VARIANT} == "deb" ]]; then
   bash generate_deb.sh
elif [[ ${VARIANT} == "rpm" ]]; then
   bash generate_rpm.sh
else
   echo "Error, unknown package type. Use either ['brew', 'deb', 'rpm']."
   exit -1
fi
rm -r tmp
