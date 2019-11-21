#!/bin/bash -e

# vim 8.0 for centos
curl -fSL https://copr.fedorainfracloud.org/coprs/lbiaggi/vim80-ligatures/repo/epel-7/lbiaggi-vim80-ligatures-epel-7.repo -o /etc/yum.repos.d/vim80.repo
yum install -y vim-enhanced
