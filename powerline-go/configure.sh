#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

mkdir -p ~/.bash/
cp -f $CWD/powerline-go.bash ~/.bash/

echo ". ~/.bash/powerline-go.bash" >> ~/.bashrc
