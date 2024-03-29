#!/bin/bash -e

# vim 8.0 for centos 7.x
# centos 8.x can install by yum directly
curl -fSL https://copr.fedorainfracloud.org/coprs/lbiaggi/vim80-ligatures/repo/epel-7/lbiaggi-vim80-ligatures-epel-7.repo -o /etc/yum.repos.d/vim80.repo
yum install -y vim-enhanced

# install ctags cscope
yum install -y ctags cscope
