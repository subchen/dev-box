#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

echo "Configuring apt repo ..."
cp -f $CWD/sources.list.d/* /etc/apt/sources.list.d/