#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

cp -f $ROOT/root/.bashrc.devbox ~/
cp -f $ROOT/root/.tmux.conf     ~/

mkdir -p ~/.bashrc.d/

echo -e "$(grep -v bashrc.devbox ~/.bashrc)\n\nsource ~/.bashrc.devbox\n" > ~/.bashrc
source ~/.bashrc.devbox
