#!/bin/bash -e

OS=$(uname -s | tr [A-Z] [a-z])

GOLANG_VERSION=1.14.3
GOLANG_FILENAME=go${GOLANG_VERSION}.$OS-amd64.tar.gz
GOLANG_HOME=/usr/local/go/${GOLANG_VERSION}

echo "Downloading $GOLANG_FILENAME ..." \
 && proxy-sh curl -fSL https://dl.google.com/go/${GOLANG_FILENAME}        -o ${GOLANG_FILENAME} \
 && proxy-sh curl -fSL https://dl.google.com/go/${GOLANG_FILENAME}.sha256 -o ${GOLANG_FILENAME}.sha256 \
 && echo "$(cat ${GOLANG_FILENAME}.sha256) $GOLANG_FILENAME" | sha256sum -c - \
 && mkdir -p $GOLANG_HOME \
 && tar -zxf $GOLANG_FILENAME -C $GOLANG_HOME --strip-components=1 \
 && rm -f $GOLANG_FILENAME ${GOLANG_FILENAME}.sha256

echo "Creating linking ..." \
 && ln -sf $GOLANG_HOME/bin/go       /usr/local/bin/go \
 && ln -sf $GOLANG_HOME/bin/gofmt    /usr/local/bin/gofmt \
 && ln -sf $GOLANG_HOME/bin/godoc    /usr/local/bin/godoc
