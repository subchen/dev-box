#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

cp -rf $ROOT/root/.bashrc.devbox  ~/
cp -rf $ROOT/root/.bashrc.d/      ~/
cp -rf $ROOT/root/.tmux.conf      ~/

echo -e "$(grep -v 'bashrc.devbox' ~/.bashrc)\n\nsource ~/.bashrc.devbox\n" > ~/.bashrc
source ~/.bashrc.devbox

