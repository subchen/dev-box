#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

mkdir -p -m 0700 ~/.ssh

cp -f $ROOT/root/.ssh/* ~/.ssh/

cp -f ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys

chmod 0600 ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/id_rsa
chmod 0644 ~/.ssh/id_rsa.pub

