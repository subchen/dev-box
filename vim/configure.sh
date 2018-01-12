#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

cp -f $CWD/config/.vimrc ~/

$CWD/update-vim-plugins.sh
