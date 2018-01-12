#!/bin/bash -e

curl -fSL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo

yum install -y yarn
