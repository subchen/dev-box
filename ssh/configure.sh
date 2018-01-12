#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ""

cp -f $CWD/config/* ~/.ssh/
