#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

cp -f $ROOT/root/.* ~/

echo -e "$(grep -v bashrc.devbox ~/.bashrc)\n\nsource ~/.bashrc.devbox\n" > ~/.bashrc
source ~/.bashrc.devbox

