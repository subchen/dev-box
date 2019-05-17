#!/bin/bash -e

DIR="$HOME/.dev-box"

mkdir -p $DIR

if [ -d "$DIR/.git" ];
    git clone https://github.com/subchen/docker-images.git $DIR
else
    cd $DIR && git pull
fi
