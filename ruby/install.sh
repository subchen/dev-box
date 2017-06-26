#!/bin/bash -e

function install_ruby() {
    if type -P ruby > /dev/null; then
        return
    fi

    echo "Installing ruby ..."
    yum-default install -y ruby ruby-devel ruby-libs rubygems rubygems-devel
}

install_ruby

