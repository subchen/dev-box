#!/bin/bash

#http://www.360doc.com/content/14/0606/16/3300331_384326124.shtml

if [ "$(uname -s)" != "Linux" ]; then
    exit 0
fi

if [ -f /.dockerenv ]; then
    exit 0
fi

sysctl -w fs.file-max="999999"
sysctl -w net.core.netdev_max_backlog="32768"
sysctl -w net.core.somaxconn="32768"
sysctl -w net.core.rmem_default="524288"
sysctl -w net.core.rmem_max="16777216"
sysctl -w net.core.wmem_default="524288"
sysctl -w net.core.wmem_max="16777216"
sysctl -w net.ipv4.ip_forward="1"
sysctl -w net.ipv4.ip_local_port_range="10000 65000"
sysctl -w net.ipv4.neigh.default.gc_thresh1="1024"
sysctl -w net.ipv4.neigh.default.gc_thresh2="4096"
sysctl -w net.ipv4.neigh.default.gc_thresh3="8192"
sysctl -w net.ipv4.tcp_fin_timeout="30"
sysctl -w net.ipv4.tcp_keepalive_time="900"
sysctl -w net.ipv4.tcp_keepalive_intvl="30"
sysctl -w net.ipv4.tcp_keepalive_probes="3"
sysctl -w net.ipv4.tcp_max_orphans="131072"
sysctl -w net.ipv4.tcp_max_syn_backlog="32768"
sysctl -w net.ipv4.tcp_max_tw_buckets="5000"
sysctl -w net.ipv4.tcp_syncookies="1"
sysctl -w net.ipv4.tcp_tw_recycle="1"
sysctl -w net.ipv4.tcp_tw_reuse="1"
sysctl -w net.ipv4.tcp_rmem="8192 32768 16777216"
sysctl -w net.ipv4.tcp_wmem="8192 32768 16777216"
sysctl -w net.ipv4.udp_rmem_min="32768"
sysctl -w net.ipv4.udp_wmem_min="32768"
