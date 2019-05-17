#!/bin/bash -e

mkdir -p $HOME/.dotfiles

if [ -d "$HOME/.dotfiles/.git" ];
    git clone https://github.com/subchen/docker-images.git $HOME/.dotfiles
else
    cd $HOME/.dotfiles && git pull
fi
