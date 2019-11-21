#!/bin/bash -e

if [ -f /.dockerenv ]; then
    exit 0
fi

if hash docker &> /dev/null; then
    echo "docker has been installed"
    exit 0
fi

echo "Installing docker-ce ..."
brew cask install docker

echo "Configuring bash_completion ..."
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion .
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion .
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion .

