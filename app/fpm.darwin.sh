#!/bin/bash -e

echo "Install rpm-build ..."
brew install rpm

echo "Install fpm ..."
gem install fpm

# install gnutar for build deb package for macOS
# https://github.com/jordansissel/fpm/issues/576
echo "Install gnu-tar ..."
brew install gnu-tar
ln -s /usr/local/bin/gtar /usr/local/bin/gnutar
