#!/bin/bash -e

defaults write -g ApplePressAndHoldEnabled -bool false

defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

defaults write com.apple.TextEdit RichText -int 0

