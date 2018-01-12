#!/bin/bash -e

os=$(uname -s | tr '[A-Z]' '[a-z]')

curl -fSL https://github.com/justjanne/powerline-go/releases/download/v1.8.2/powerline-go-$os-amd64 -o /usr/local/bin/powerline-go

chmod +x /usr/local/bin/powerline-go
