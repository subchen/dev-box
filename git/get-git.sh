#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

function install_git() {
    if type -P git > /dev/null; then
        echo "git has been installed"
        return
    fi

    echo "Installing git ..."
    if type -P yum > /dev/null; then
        yum-default install -y git
    elif type -P apt-get > /dev/null; then
        proxy-sh apt-get update
        proxy-sh apt-get install -y git
    elif type -P brew > /dev/null; then
        brew install git
    fi
}

function install_git_prompt() {
    if [ -f /etc/bash_completion.d/git-prompt ]; then
        # ubuntu
        ln -sf /etc/bash_completion.d/git-prompt /usr/local/bin/git-prompt.sh
    elif [ -f /usr/lib/git-core/git-sh-prompt ]; then
        # ubuntu
        ln -sf /usr/lib/git-core/git-sh-prompt /usr/local/bin/git-prompt.sh
    elif [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
        # mac brew
        ln -sf /usr/local/etc/bash_completion.d/git-prompt.sh /usr/local/bin/git-prompt.sh
    elif [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
        # centos
        ln -sf /usr/share/git-core/contrib/completion/git-prompt.sh /usr/local/bin/git-prompt.sh
    else
        echo "Downloading git-prompt.sh ..."
        proxy-sh curl -fSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o /usr/local/bin/git-prompt.sh
    fi
}

install_git
install_git_prompt

echo "Configuring git ..."
cp -rf $ROOT/root/.gitconfig       ~/
cp -rf $ROOT/root/.bashrc.d/git.sh ~/.bashrc.d/
source ~/.bashrc.d/git.sh

