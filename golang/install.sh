#!/bin/bash -e

if type -P go > /dev/null; then
    echo "go has been installed"
    exit 0
fi

OS=$(uname -s | tr [A-Z] [a-z])

GOLANG_VERSION=1.8.3
GOLANG_FILENAME=go${GOLANG_VERSION}.$OS-amd64.tar.gz
GOLANG_HOME=/usr/local/go/${GOLANG_VERSION}

echo "Downloading $GOLANG_FILENAME ..." \
 && proxy-sh curl -fSL https://storage.googleapis.com/golang/${GOLANG_FILENAME}        -o ${GOLANG_FILENAME} \
 && proxy-sh curl -fSL https://storage.googleapis.com/golang/${GOLANG_FILENAME}.sha256 -o ${GOLANG_FILENAME}.sha256 \
 && echo "$(cat ${GOLANG_FILENAME}.sha256) $GOLANG_FILENAME" | sha256sum -c - \
 && mkdir -p $GOLANG_HOME \
 && tar -zxf $GOLANG_FILENAME -C $GOLANG_HOME --strip-components=1 \
 && rm -f $GOLANG_FILENAME ${GOLANG_FILENAME}.sha256

echo "Creating linking ..." \
 && ln -sf $GOLANG_HOME/bin/go       /usr/local/bin/go \
 && ln -sf $GOLANG_HOME/bin/gofmt    /usr/local/bin/gofmt \
 && ln -sf $GOLANG_HOME/bin/godoc    /usr/local/bin/godoc

cat > ~/.bashrc.d/golang.bash << EOF
export GOROOT=$GOLANG_HOME
export GOPATH=/go
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH
EOF

