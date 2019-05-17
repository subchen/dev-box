#!/bin/bash -e

# See https://github.com/powerline/fonts/blob/master/install.sh

if [ "$(uname -s)" == "Linux" ]; then
    # Linux
    mkdir -p $HOME/.local/share/fonts
    curl -fSL https://github.com/eugeii/consolas-powerline-vim/raw/master/CONSOLA-Powerline.ttf -o $HOME/.local/share/fonts/CONSOLA-Powerline.ttf
fi


if [ "$(uname -s)" == "Darwin" ]; then
    # MacOS
    brew install caskroom/fonts/font-menlo-for-powerline
    #brew install caskroom/fonts/font-consolas-for-powerline

    # config iterm2
    iterm2_plist=$HOME/Library/Preferences/com.googlecode.iterm2.plist
    /usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Use Non-ASCII Font' bool true" $iterm2_plist
    /usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'ASCII Anti Aliased' bool true" $iterm2_plist
    /usr/libexec/PlistBuddy -c "Set:'New Bookmarks':0:'Non Ascii Font' string 'MenloForPowerline-Regular 12'" $iterm2_plist
fi
