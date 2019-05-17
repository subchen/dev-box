#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

echo "Updating git repo ..."
#cd $CWD && git pull

function doIt() {
    rsync --exclude ".git/" \
          --exclude ".DS_Store" \
          --exclude "app/" \
          --exclude "install.sh" \
          --exclude "bootstrap.sh" \
          --exclude "README.md" \
          -avh $CWD/. $HOME

    chmod +x $HOME/.bin/*
    source $HOME/.bash_profile
}

if [ "$1" == "--force" ]; then
    doIt
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
