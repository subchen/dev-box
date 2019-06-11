#!/bin/bash -e

if hash yum &>/dev/null; then
    yum install -y autojump
elif hash apt-get &>/dev/null; then
    apt-get install autojump
elif hash brew &>/dev/null; then
    brew install autojump
fi
