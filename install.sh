#!/bin/bash

set -e
set -x

if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root!"
    exit 1
fi

ROOT=$(cd $(dirname $0); pwd)

function check_os_name() {
    if [ "$(uname -s)" == "Darwin" ]; then
        OSNAME=macosx
        return
    fi

    if grep -q 'ID="centos"' /etc/os-release; then
        OSNAME=centos
        return
    fi
    if grep -q 'ID="rhel"' /etc/os-release; then
        OSNAME=centos
        return
    fi

    if grep -q 'ID=ubuntu' /etc/os-release; then
        OSNAME=ubuntu
        return
    fi

    if grep -q 'ID=alpine' /etc/os-release; then
        OSNAME=alpine
        return
    fi

    echo "Unknown linux distribution"
    exit 1
}

# validate
check_os_name

# configure
$ROOT/os/$OSNAME/config.sh
$ROOT/proxy/config.sh
$ROOT/bash/config.sh
$ROOT/ssh/config.sh
$ROOT/kernel/config.sh

# install
$ROOT/os/$OSNAME/install.sh
$ROOT/vim/install.sh
$ROOT/git/get-git.sh
$ROOT/git/get-diff-so-fancy.sh
$ROOT/golang/install.sh
$ROOT/nodejs/install.sh
$ROOT/java/get-java.sh
$ROOT/java/get-maven.sh
$ROOT/docker/install.sh
