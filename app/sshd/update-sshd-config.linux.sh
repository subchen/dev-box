#!/bin/bash -e

sed -i '/^#*PermitRootLogin/c PermitRootLogin yes' /etc/ssh/sshd_config
sed -i '/^#*UseDNS/c UseDNS=no' /etc/ssh/sshd_config
