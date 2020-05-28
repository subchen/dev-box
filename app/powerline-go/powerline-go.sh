#!/bin/bash -e

OS=$(uname -s | tr '[A-Z]' '[a-z]')
VERSION=1.17.0

curl -fSL https://github.com/justjanne/powerline-go/releases/download/v$VERSION/powerline-go-$OS-amd64 -o /usr/local/bin/powerline-go

chmod +x /usr/local/bin/powerline-go
