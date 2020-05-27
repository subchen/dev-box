#!/bin/bash -e

#
# eval "$(./os-detect.sh)"
# echo $OS_FAMILY
#

if [ $(uname -s) == "Darwin" ]; then
    echo "OS_FAMILY=darwin"
    echo "OS_NAME=darwin"
    echo "OS_VERSION=$(sw_vers -productVersion)"
fi

if [ $(uname -s) == "Linux" ]; then
    source /etc/os-release
    echo "OS_FAMILY=linux"
    echo "OS_NAME=$ID"
    echo "OS_VERSON=$VERSION_ID"
fi


