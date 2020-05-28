#!/bin/bash -e

echo "Install rpm-build ..."
apt-get install -y rpm

echo "Install fpm ..."
gem install fpm
