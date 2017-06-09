#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

echo "Installing vim ..."
if type -P yum > /dev/null; then
    yum install -y vim ctags cscope
elif type -P apt-get > /dev/null; then
    apt-get update
    apt-get install -y vim ctags cscope
elif type -P brew > /dev/null; then
    brew install vim ctags cscope
fi

echo "Installing vim plugins ..."
$ROOT/upddate_vim_plugins.sh

echo "Configuring vim ..."
cp -f $ROOT/root/.vimrc ~/

