#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

## encoding
cat >> /etc/environment << EOF
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF

## timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

## apt-repo
$CWD/apt-repo/config.sh
