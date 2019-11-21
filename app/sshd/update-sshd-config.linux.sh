#!/bin/bash -e

sed '/UseDNS/c UseDNS=no' /etc/ssh/sshd_config
