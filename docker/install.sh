#!/bin/bash

set -e

if [ -f /.dockerenv ]; then
    exit 0
fi

ROOT=$(cd $(dirname $0); pwd)

function yum_install_docker() {
    proxy-sh curl -fSL https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
    yum-default --enablerepo=docker-ce-stable install -y docker-ce
}

function apt_get_install_docker() {
    proxy-sh apt-get update
    proxy-sh apt-get install -y \
        apt-transport-https ca-certificates software-properties-common

    proxy-sh curl -fSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    proxy-sh apt-get update
    proxy-sh apt-get install -y docker-ce
}

if [ -f "$(which docker)" ]; then
    echo "docker has been installed"
    exit 0
fi

echo "Installing docker-ce ..."
if [ -f "$(which yum)" ]; then
    yum_install_docker
elif [ -f "$(which apt-get)" ]; then
    apt_get_install_docker
elif [ -f "$(which brew)" ]; then
    brew install docker
else
    echo "Unknown linux distribution, skipped to install docker-ce"
    exit 0
fi

if [ "$(uname -s)" == "Linux"]; then
    echo "Starting docker-ce ..."
    systemctl daemon-reload
    systemctl enable docker.service
    systemctl start docker.service
fi

echo "Installing docker others ..."
cp -f $ROOT/usr/local/bin/* /usr/local/bin/
chmod +x /usr/local/bin/docker-*
