#!/bin/bash -e

yum install -y openssh-server

ssh-keygen -q -N '' -t rsa -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -q -N '' -t rsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -q -N '' -t rsa -f /etc/ssh/ssh_host_ed25519_key

#rm -rf /run/nologin
#echo 'root:123123' | chpasswd
