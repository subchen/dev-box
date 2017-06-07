#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

mkdir -p ~/.ssh

cp -f $ROOT/root/.ssh/* ~/.ssh/

chmod 0700 ~/.ssh
chmod 0600 ~/.ssh/id_rsa
chmod 0644 ~/.ssh/id_rsa.pub
