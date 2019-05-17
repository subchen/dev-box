#!/bin/bash -e

BUNDLE_LIST="
    VundleVim/Vundle.vim@v0.10.2
    scrooloose/nerdtree@5.0.0
    Xuyuanp/nerdtree-git-plugin@6a9b312
    ctrlpvim/ctrlp.vim@1.80
    majutsushi/tagbar@v2.7
    mileszs/ack.vim@1.0.9
    vim-scripts/ZoomWin@24
    flazz/vim-colorschemes@b8dff40
    chriskempson/base16-vim@e5f2e53
    vim-airline/vim-airline@v0.8
    vim-airline/vim-airline-themes@43fe392
    bronson/vim-trailing-whitespace@1.0
    mbriggs/mark.vim@abde906
    editorconfig/editorconfig-vim@v0.3.3
    tpope/vim-markdown@a7dbc31
    elzr/vim-json@f5e3181
    vim-scripts/jsbeautify@0a18560
    fatih/vim-go@v1.13
    ervandew/supertab@2.1
    prabirshrestha/asyncomplete.vim@v1.5
"

mkdir -p ~/.vim/bundle

for bundle in $BUNDLE_LIST; do
    echo "Installing vim bundle: $bundle ..."

    IFS='@' bundle=($bundle)
    name=${bundle[0]}
    version=${bundle[1]}

    cd ~/.vim/bundle/
    git clone "https://github.com/$name"

    if [ -n "$version" ]; then
        cd ~/.vim/bundle/$(basename $name)
        git reset --hard $version
    fi
done
