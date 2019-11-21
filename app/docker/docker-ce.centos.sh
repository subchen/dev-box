#!/bin/bash -e

if [ -f /.dockerenv ]; then
    exit 0
fi

echo "Installing docker-ce ..."
curl -fSL https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
yum --enablerepo=docker-ce-stable install -y docker-ce

echo "Starting docker-ce ..."
systemctl daemon-reload
systemctl enable docker.service
systemctl start docker.service
