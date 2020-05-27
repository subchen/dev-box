#!/bin/bash -e

#
# os-ver-atleast.sh 10.13 && echo "YES"
#

V1=$1
V2=$2

[ -z "$V2" ] && V2=$OS_VERSION

[ "$V2" == "$V1" ] && exit 0

MIN=$(echo -e "$V1\n$V2" | sort -V | head -n1)
[ "$MIN" == "$V1" ] && exit 0

exit 1

