#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

BUNDLE_LIST="
    VundleVim/Vundle.vim
    scrooloose/nerdtree
    Xuyuanp/nerdtree-git-plugin
    ctrlpvim/ctrlp.vim
    majutsushi/tagbar
    mileszs/ack.vim
    vim-scripts/ZoomWin
    flazz/vim-colorschemes
    chriskempson/base16-vim
    vim-airline/vim-airline
    vim-airline/vim-airline-themes
    bronson/vim-trailing-whitespace
    mbriggs/mark.vim
    editorconfig/editorconfig-vim
    tpope/vim-markdown
    elzr/vim-json
    vim-scripts/jsbeautify
    fatih/vim-go
    ervandew/supertab
"

mkdir -p ~/.vim/bundle

cd ~/.vim/bundle/
for bundle in $BUNDLE_LIST; do
    echo "Installing vim bundle: $bundle ..."
    git clone https://github.com/$bundle
done

