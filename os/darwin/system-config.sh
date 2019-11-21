#!/bin/bash -e

defaults write -g ApplePressAndHoldEnabled -bool false

defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

defaults write com.apple.TextEdit RichText -int 0

### refs ###
# https://gist.github.com/vraravam/5e28ca1720c9dddacdc0e6db61e093fe
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
