#!/bin/bash -e

echo "Install rpm-build ..."
apt-get install -y rpm ruby-ffi

echo "Install fpm ..."
gem install fpm
