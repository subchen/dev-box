#!/bin/bash -e

OS=$(uname -s | tr [A-Z] [a-z])

NODE_VERSION=10.13.0
NODE_FILENAME=node-v$NODE_VERSION-$OS-x64.tar.gz

echo "Downloading $NODE_FILENAME ..." \
 && proxy-sh curl -fSL https://nodejs.org/dist/v$NODE_VERSION/$NODE_FILENAME -o $NODE_FILENAME \
 && proxy-sh curl -fSL https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt -o SHASUMS256.txt \
 && grep $NODE_FILENAME SHASUMS256.txt | sha256sum -c \
 && tar -xzf $NODE_FILENAME -C /usr/local --strip-components=1 \
 && rm -f $NODE_FILENAME SHASUMS256.txt
