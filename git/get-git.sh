#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

function install_git() {
    if type -P git > /dev/null; then
        echo "git has been installed"
        return
    fi

    echo "Installing git ..."
    if type -P yum > /dev/null; then
        yum install -y git
    elif type -P apt-get > /dev/null; then
        apt-get update
        apt-get install -y git
    elif type -P brew > /dev/null; then
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

