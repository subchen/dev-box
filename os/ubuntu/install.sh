#!/bin/bash

set -e

echo "Installing packages ..."

proxy-sh apt-get update
proxy-sh apt-get install -y \
    bash-completion \
    vim tmux \
    curl wget zip unzip tree \
    git rsync \
    python-software-properties software-properties-common \
    build-essential autoconf automake autotools-dev \
    yajl-tools jq \
    sshpass sshfs silversearcher-ag

