#!/bin/bash -e

# See https://github.com/powerline/fonts/blob/master/install.sh

if [ "$(uname)" = "Darwin"]; then
    # MacOS
    font_dir="$HOME/Library/Fonts"
else
    # Linux
    font_dir="$HOME/.local/share/fonts"
    mkdir -p $font_dir
fi

curl -fSL https://github.com/eugeii/consolas-powerline-vim/raw/master/CONSOLA-Powerline.ttf -o $font_dir/CONSOLA-Powerline.ttf

# reset font cache
if which fc-cache &>/dev/null; then
    echo "Resetting font cache, this may take a moment..."
    fc-cache -f "$font_dir"
fi
