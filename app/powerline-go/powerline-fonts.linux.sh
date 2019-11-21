#!/bin/bash -e

# See https://github.com/powerline/fonts/blob/master/install.sh

mkdir -p $HOME/.local/share/fonts
curl -fSL https://github.com/eugeii/consolas-powerline-vim/raw/master/CONSOLA-Powerline.ttf -o $HOME/.local/share/fonts/CONSOLA-Powerline.ttf
