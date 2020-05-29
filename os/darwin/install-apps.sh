#!/bin/bash -e

echo "Installing brew and brew-cask ..."
ruby -e "$(curl -fSL https://raw.github.com/mxcl/homebrew/go)"
brew install caskroom/cask/brew-cask

# xcode-select --install

brew install bash-completion
brew install git
brew install vim
brew install cscope
brew install ctags
brew install wget
brew install tree
brew install coreutils
#brew install md5sha1sum
brew install dos2unix
brew install ossp-uuid
brew install gnu-sed
brew install gnu-tar
brew install the_silver_searcher
brew install jq
brew install yajl
brew install openssl
brew install ssh-copy-id
brew install shfmt
brew install devd
brew install rpm
brew install diff-so-fancy
brew install autojump

#ln -sf /usr/local/bin/gmd5sum    /usr/local/bin/md5sum
#ln -sf /usr/local/bin/gsha1sum   /usr/local/bin/sha1sum
#ln -sf /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
#ln -sf /usr/local/bin/gsha512sum /usr/local/bin/sha512sum

brew install subchen/tap/frep
brew install subchen/tap/sshpass
brew install subchen/tap/powerline-go

#brew install thefuck

###################################################
# app
#
brew cask install caskroom/cask/google-chrome
brew cask install caskroom/cask/iterm2
brew cask install caskroom/cask/visual-studio-code
#brew cask install caskroom/cask/commander-one
brew cask install caskroom/cask/evernote
brew cask install caskroom/cask/qq
brew cask install caskroom/cask/sogouinput
brew cask install caskroom/cask/snipaste
brew cask install caskroom/cask/betterzip
brew cask install caskroom/cask/meld

brew cask install caskroom/cask/insomnia
brew cask install caskroom/cask/balsamiq-mockups
brew cask install caskroom/versions/microsoft-remote-desktop-beta

brew cask install caskroom/fonts/font-consolas-for-powerline
brew cask install caskroom/fonts/font-menlo-for-powerline

brew cask install caskroom/cask/itsycal
brew cask install caskroom/cask/mos
#brew cask install caskroom/cask/scroll-reverser
#brew cask install caskroom/cask/karabiner-elements

#brew cask install caskroom/cask/intellij-idea-ce
#brew cask install caskroom/cask/webstorm
#brew cask install caskroom/cask/pycharm-ce

brew cask install caskroom/cask/docker
brew install docker-completion
#brew install docker-compose
#brew install docker-compose-completion
#brew install docker-machine
#brew install docker-machine-completion
brew install kubernetes-cli
brew install openshift-cli
brew install kubernetes-helm

brew cask install caskroom/cask/veracrypt
#brew cask install caskroom/cask/calibre

## To install virtualbox, you may need to enable their kernel extension in
##   System Preferences → Security & Privacy → General
brew cask install --force caskroom/cask/virtualbox

brew install packer
brew install packer-completion

brew cask install caskroom/cask/switchhosts

brew install make
brew install autoconf

brew install go
#brew install glide
#brew install dep
#brew install go-delve/delve/delve

brew install node
brew install npm
brew install yarn

brew cask install caskroom/cask/java
brew cask install caskroom/cask/luyten
#brew cask install caskroom/cask/jd-gui
brew install maven
brew install maven-completion


# brew install termtosvg
# brew install asciinema
# brew cask install caskroom/cask/licecap

####################################
# appstore
#brew install mas

#mas signin subchen@gmail.com

#mas install 1144825078 # Care Master 4.8.0
#mas install 595191960  # CopyClip 1.9
#mas install 566809953  # 爱壁纸HD 3.6.0
#mas install 1127253508 # Dr. Unarchiver 1.2.0
#mas install 497799835  # Xcode 9.1
#mas install 594432954  # Read CHM

####################################
# dmg
wget https://github.com/Clipy/Clipy/releases/download/1.2.1/Clipy_1.2.1.dmg
