#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

cp -f $ROOT/usr/local/bin/proxy-sh /usr/local/bin/

chmod +x /usr/local/bin/proxy-sh

