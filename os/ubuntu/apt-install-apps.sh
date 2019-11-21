#!/bin/bash -e

echo "Installing packages ..."

apt-get update
apt-get install -y \
    bash-completion \
    vim tmux \
    curl wget zip unzip tree \
    git rsync \
    ntp \
    python-software-properties software-properties-common \
    build-essential autoconf automake autotools-dev \
    yajl-tools jq \
    sshpass sshfs silversearcher-ag
