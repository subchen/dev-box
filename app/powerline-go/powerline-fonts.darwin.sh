#!/bin/bash -e

brew install homebrew/cask-fonts/font-menlo-for-powerline
#brew install homebrew/cask-fonts/font-consolas-for-powerline

# config iterm2
iterm2_plist=$HOME/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Use Non-ASCII Font' bool true" $iterm2_plist
/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'ASCII Anti Aliased' bool true" $iterm2_plist
/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Non Ascii Font' string 'MenloForPowerline-Regular 12'" $iterm2_plist
