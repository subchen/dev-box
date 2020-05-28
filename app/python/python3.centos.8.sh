#!/bin/bash -e

yum install -y python36 python36-devel python3-pip

ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip
