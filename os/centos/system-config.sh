#!/bin/bash -e

## encoding
cat >> /etc/environment << EOF
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
EOF

## timezone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

if [ ! -f /.dockerenv ]; then
    ## disable firewall and iptables
    systemctl disable firewalld

    ## disable selinux
    setenforce 0 || true
    echo -e 'SELINUX=disabled\nSELINUXTYPE=targeted' > /etc/sysconfig/selinux
fi
