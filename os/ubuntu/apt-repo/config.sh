#!/bin/bash

set -e

ROOT=$(cd $(dirname $0); pwd)

echo "Configuring apt repo ..."
cp -f $ROOT/etc/apt/sources.list.d/* /etc/apt/sources.list.d/

