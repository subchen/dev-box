#!/bin/bash -e

#
# eval "$(./os-detect.sh)"
# echo $OS_NAME
#
# OS_PLATFORM=darwin/linux
# OS_NAME=darwin/centos/rhel/fedora/alpine/ubuntu/...
# OS_VERSION=10.13.6/8/...
#

if [ "$(uname -s)" == "Darwin" ]; then
    echo "OS_PLATFORM=darwin"
    echo "OS_NAME=darwin"
    echo "OS_VERSION=$(sw_vers -productVersion)"
fi

if [ "$(uname -s)" == "Linux" ]; then
    source /etc/os-release
    echo "OS_PLATFORM=linux"
    echo "OS_NAME=$ID"
    echo "OS_VERSON=$VERSION_ID"
fi


