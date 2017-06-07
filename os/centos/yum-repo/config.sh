#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

echo "Configuring yum repo ..."
cp -f $ROOT/etc/yum.repos.d/* /etc/yum.repos.d/
cp -f $ROOT/usr/local/bin/*   /usr/local/bin/

chmod +x /usr/local/bin/yum-*

