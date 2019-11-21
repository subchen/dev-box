#!/bin/bash -e

echo "Installing docker-ce ..."
brew cask install docker

echo "Configuring bash_completion ..."
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion .
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion .
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion .
