#!/bin/bash -e

echo "Installing RPMs ..."

yum-default install -y \
    vim tmux wget curl zip unzip which \
    net-tools tree psmisc bind-utils nmap-ncat \
    bash-completion \
    git rsync \
    yajl \
    chrony \
    yum-utils createrepo \
    make automake autoconf libtool gcc gcc-c++ cmake \
    epel-release

yum-epel install -y \
    sshpass jq

yum install -y https://dl.bintray.com/subchen/yum-repo/the_silver_searcher-2.1.0-1.el8.x86_64.rpm

yum-rpmforge install -y \
    fuse-sshfs
