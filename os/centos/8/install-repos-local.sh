#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

cp -f $CWD/yum.repos.d/* /etc/yum.repos.d/
cp -f $CWD/yum.bin/*     /usr/local/bin/

chmod +x /usr/local/bin/yum-*
