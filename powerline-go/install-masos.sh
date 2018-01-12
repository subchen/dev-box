#!/bin/bash -e

CWD=$(cd $(dirname $0); pwd)

## binary
# curl -fSL https://github.com/justjanne/powerline-go/releases/download/v1.8.2/powerline-go-darwin-amd64 \
#    -o /usr/local/bin/powerline-go
# chmod +x /usr/local/bin/powerline-go

## using brew
brew install subchen/tap/powerline-go
