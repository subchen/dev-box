#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

## encoding
cat >> /etc/environment << EOF
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF

## timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

## apt-repo
$ROOT/apt-repo/config.sh
