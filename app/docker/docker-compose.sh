#!/bin/bash -e

curl -fSL https://github.com/docker/compose/releases/download/1.13.0/docker-compose-$(uname -s)-$(uname -m) \
     -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
