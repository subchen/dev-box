#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

function install_vim() {
    echo "Installing vim ..."
    if type -P yum > /dev/null; then
        yum install -y vim ctags cscope
    elif type -P apt-get > /dev/null; then
        apt-get update
        apt-get install -y vim ctags cscope
    elif type -P brew > /dev/null; then
        brew install vim ctags cscope
    fi
}

install_vim

echo "Configuring vim ..."
rm -rf ~/.vimrc ~/.vim
cp -rf $ROOT/root/.vimrc ~/
cp -rf $ROOT/root/.vim   ~/

