#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

function install_git() {
    if [ -f "$(which git)" ]; then
        echo "git has been installed"
        return
    fi

    echo "Installing git ..."
    if [ -f "$(which yum)" ]; then
        yum install -y git
    elif [ -f "$(which apt-get)" ]; then
        apt-get update
        apt-get install -y git
    elif [ -f "$(which pkg)" ]; then
        pkg install -y git
    elif [ -f "$(which brew)" ]; then
        brew install git
    fi
}

install_git

echo "Downloading git-prompt.sh ..."
proxy-sh curl -fSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o /usr/local/bin/git-prompt.sh

echo "Configuring git ..."
cp -rf $ROOT/root/.gitconfig       ~/
cp -rf $ROOT/root/.bashrc.d/git.sh ~/.bashrc.d/
source ~/.bashrc.d/git.sh

