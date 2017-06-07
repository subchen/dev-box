#!/bin/bash

set -e

echo "Installing RPMs ..."

yum-default install -y \
    vim tmux wget curl zip unzip which \
    net-tools tree psmisc bind-utils nmap-ncat \
    bash-completion \
    git rsync \
    yajl \
    yum-utils createrepo \
    make automake autoconf libtool gcc gcc-c++ cmake \
    epel-release

yum-epel install -y \
    sshpass the_silver_searcher jq

yum-rpmforge install -y \
    fuse-sshfs
