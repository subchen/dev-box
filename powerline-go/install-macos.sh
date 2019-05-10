#!/bin/bash -e

brew install subchen/tap/powerline-go

#brew cask install caskroom/fonts/font-consolas-for-powerline
brew cask install caskroom/fonts/font-menlo-for-powerline



/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Use Non-ASCII Font' bool true" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'ASCII Anti Aliased' bool true" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Non Ascii Font' string 'MenloForPowerline-Regular 12'" ~/Library/Preferences/com.googlecode.iterm2.plist


/usr/libexec/PlistBuddy -c "Print:'New Bookmarks':0:'Use Non-ASCII Font'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Print:'New Bookmarks':0:'ASCII Anti Aliased'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Print:'New Bookmarks':0:'Non Ascii Font'" ~/Library/Preferences/com.googlecode.iterm2.plist

