#!/bin/bash -e

echo "Install rpm-build ..."
yum install -y rpm-build

echo "Install fpm ..."
gem install fpm
