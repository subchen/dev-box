#!/bin/bash -e

URL_BASE=https://github.com/subchen/dev-box/raw/develop/os/centos/8

curl -sfSL $URL_BASE/yum.repos.d/163-mirror.repo    -o /etc/yum.repos.d/163-mirror.repo
curl -sfSL $URL_BASE/yum.repos.d/aliyun-mirror.repo -o /etc/yum.repos.d/aliyun-mirror.repo

curl -sfSL $URL_BASE/yum.bin/yum-default  -o /usr/local/bin/yum-default
curl -sfSL $URL_BASE/yum.bin/yum-epel     -o /usr/local/bin/yum-epel
curl -sfSL $URL_BASE/yum.bin/yum-163      -o /usr/local/bin/yum-163
curl -sfSL $URL_BASE/yum.bin/yum-aliyun   -o /usr/local/bin/yum-aliyun

chmod +x /usr/local/bin/yum-*
