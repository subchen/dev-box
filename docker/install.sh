#!/bin/bash -e

if [ -f /.dockerenv ]; then
    exit 0
fi

ROOT=$(cd $(dirname $0); pwd)

function yum_install_docker() {
    proxy-sh curl -fSL https://download.docker.com/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo
    yum-default --enablerepo=docker-ce-stable install -y docker-ce
}

function apt_get_install_docker() {
    proxy-sh apt-get update
    proxy-sh apt-get install -y \
        apt-transport-https ca-certificates software-properties-common

    proxy-sh curl -fSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    proxy-sh apt-get update
    proxy-sh apt-get install -y docker-ce
}

if type -P docker > /dev/null; then
    echo "docker has been installed"
    exit 0
fi

echo "Installing docker-ce ..."
if type -P yum > /dev/null; then
    yum_install_docker
elif type -P apt-get > /dev/null; then
    apt_get_install_docker
elif type -P brew > /dev/null; then
    brew cask install docker
else
    echo "Unknown linux distribution, skipped to install docker-ce"
    exit 0
fi

if [ "$(uname -s)" == "Linux"]; then
    echo "Starting docker-ce ..."
    systemctl daemon-reload
    systemctl enable docker.service
    systemctl start docker.service
fi

echo "Installing docker others ..."
cp -f $ROOT/usr/local/bin/* /usr/local/bin/
chmod +x /usr/local/bin/docker-*

if [ "$(uname -s)" == "Darwin" ]; then
    echo "Configuring bash_completion ..."
    cd /usr/local/etc/bash_completion.d
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
    ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
fi

if type -P docker-compose > /dev/null; then
    curl -fSL https://github.com/docker/compose/releases/download/1.13.0/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
fi

