#!/bin/bash -e

#http://www.360doc.com/content/14/0606/16/3300331_384326124.shtml

if [ "$(uname -s)" != "Linux" ]; then
    exit 0
fi

if [ -f /.dockerenv ]; then
    exit 0
fi

sysctl -p /etc/sysctl.d/sysctl.conf
