#!/bin/bash -e

VERSION=1.12.1

OS=$(uname -s | tr '[A-Z]' '[a-z]')

curl -fSL https://github.com/justjanne/powerline-go/releases/download/v$VERSION/powerline-go-$OS-amd64 -o /usr/local/bin/powerline-go

chmod +x /usr/local/bin/powerline-go
