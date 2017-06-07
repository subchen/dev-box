#!/bin/bash

set -e

if [ ! -f "$(which -q brew)" ]; then
    echo "Installing brew and brew-cask ..."
    ruby -e "$(curl -fSL https://raw.github.com/mxcl/homebrew/go)"
    brew install caskroom/cask/brew-cask
fi

echo "Installing app ..."
brew install \
    bash-completion \
    openssh-ssl ssh-copy-id sshfs \
    git wget vim curl coreutils pcre \
    the_silver_searcher jq yajl \
    shellcheck shfmt

ln -sf /usr/local/bin/gmd5sum    /usr/local/bin/md5sum
ln -sf /usr/local/bin/gsha1sum   /usr/local/bin/sha1sum
ln -sf /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
ln -sf /usr/local/bin/gsha512sum /usr/local/bin/sha512sum

if [ ! -f "$(which -q sshpass)" ]; then
    echo "Installing sshpass ..."
    brew install https://raw.github.com/eugeneoden/homebrew/eca9de1/Library/Formula/sshpass.rb
fi
