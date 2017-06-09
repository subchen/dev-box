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
    tpope/vim-markdown
    elzr/vim-json
    vim-scripts/jsbeautify
    fatih/vim-go
    ervandew/supertab
"

rm -rf $ROOT/root/.vim

for bundle in $BUNDLE_LIST; do
    name=$(basename $bundle)
    url=https://github.com/$bundle/archive/master.tar.gz
    file=/tmp/$name.tar.gz

    echo "Downloading $url ..."
    curl -fSL $url -o $file
    mkdir -p $ROOT/root/.vim/bundle/$name
    tar -zxf $file -C $ROOT/root/.vim/bundle/$name --strip-components=1
    rm -f $file
done

