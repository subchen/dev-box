#!/bin/bash -e

yum install -y python python-devel

# pip
curl -fSL https://bootstrap.pypa.io/get-pip.py | python

# virtualenv
pip install virtualenv
