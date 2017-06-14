#!/bin/bash -e

if ! type -P pip > /dev/null; then
    echo "Installing pip ..."
    yum-default install -y python-devel
    proxy-sh curl -fSL https://bootstrap.pypa.io/get-pip.py | proxy-sh python
fi

if ! type -P virtualenv > /dev/null; then
    echo "Installing virtualenv ..."
    proxy-sh pip install virtualenv
fi

