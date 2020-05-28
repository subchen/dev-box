#!/bin/bash -e

yum install -y openssh-clients

mkdir -p $HOME/.ssh
ssh-keygen -q -N '' -t rsa -f /root/.ssh/id_rsa
