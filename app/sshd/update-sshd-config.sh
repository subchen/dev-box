#!/bin/bash -e

[ "$(uname -s)" == "Linux" ] && sed '/UseDNS/c UseDNS=no' /etc/ssh/sshd_config
