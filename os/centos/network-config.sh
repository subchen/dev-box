#!/bin/bash -e

hostnamectl set-hostname devbox

cat > /etc/sysconfig/network-scripts/ifcfg-eth0 << EOF
DEVICE=eth0
TYPE=Ethernet
ONBOOT=yes
BOOTPROTO=static
IPADDR=192.168.10.11
NETMASK=255.255.255.0
GATEWAY=192.168.10.1
IPV6INIT=no
NM_CONTROLLED=no
DEFROUTE=yes
PEERDNS=no
EOF

ifdown ens160
ifup ens160

cat > /etc/hosts << EOF
127.0.0.1      localhost localhost.localdomain localhost4 localhost4.localdomain4
::1            localhost localhost.localdomain localhost6 localhost6.localdomain6
192.168.10.11  vbox
EOF

cat > /etc/resolv.conf << EOF
nameserver 8.8.8.8
EOF

