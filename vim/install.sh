#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

function install_vim() {
    if [ -f "$(which vim)" ]; then
        echo "vim has been installed"
        return
    fi

    echo "Installing vim ..."
    if [ -f "$(which yum)" ]; then
        yum install -y vim
    elif [ -f "$(which apt-get)" ]; then
        apt-get update
        apt-get install -y vim
    elif [ -f "$(which pkg)" ]; then
        pkg install -y vim
    elif [ -f "$(which brew)" ]; then
        brew install vim
    fi
}

install_vim

echo "Configuring vim ..."
rm -rf ~/.vimrc ~/.vim
cp -rf $ROOT/root/.vimrc ~/
cp -rf $ROOT/root/.vim   ~/
