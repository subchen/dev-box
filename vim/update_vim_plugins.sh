#!/bin/bash -e

ROOT=$(cd $(dirname $0); pwd)

BUNDLE_LIST="
    VundleVim/Vundle.vim@v0.10.2
    scrooloose/nerdtree@5.0.0
    Xuyuanp/nerdtree-git-plugin
    ctrlpvim/ctrlp.vim@1.80
    majutsushi/tagbar@v2.7
    mileszs/ack.vim@1.0.9
    vim-scripts/ZoomWin@24
    flazz/vim-colorschemes
    chriskempson/base16-vim
    vim-airline/vim-airline@v0.8
    vim-airline/vim-airline-themes
    bronson/vim-trailing-whitespace@1.0
    mbriggs/mark.vim
    editorconfig/editorconfig-vim@v0.3.3
    tpope/vim-markdown
    elzr/vim-json
    vim-scripts/jsbeautify
    fatih/vim-go@v1.13
    ervandew/supertab@2.1
"

mkdir -p ~/.vim/bundle

for bundle in $BUNDLE_LIST; do
    echo "Installing vim bundle: $bundle ..."

    IFS='@' bundle=($bundle)
    name=${bundle[0]}
    version=${bundle[1]}

    cd ~/.vim/bundle/
    git clone https://github.com/$name

    if [ -n "$version" ]; then
        cd ~/.vim/bundle/$(basename $name)
        git reset --hard $version
    fi
done

