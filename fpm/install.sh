#!/bin/bash -e

if type -P fpm > /dev/null; then
    exit 0
fi

echo "Install fpm ..."
gem install fpm

echo "Install rpm-build ..."
if type -P yum > /dev/null; then
    yum-default install -y rpm-build
elif type -P apt-get > /dev/null; then
    apt-get install -y rpm-build
elif type -P brew > /dev/null; then
    brew install rpm
fi

if [ "$(uname -s)" == "Darwin" ]; then
    # install gnutar for build deb package for macOS
    # https://github.com/jordansissel/fpm/issues/576
    echo "Install gnu-tar ..."
    brew install gnu-tar
    ln -s /usr/local/bin/gtar /usr/local/bin/gnutar
fi

