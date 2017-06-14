#!/bin/bash -e

DSF_VERSION=0.11.4
DSF_FILENAME=diff-so-fancy-${DSF_VERSION}.tar.gz
DSF_HOME=/usr/local/diff-so-fancy-${DSF_VERSION}

echo "Downloading $DSF_FILENAME ..." \
 && proxy-sh curl -fSL https://github.com/so-fancy/diff-so-fancy/archive/v${DSF_VERSION}.tar.gz -o $DSF_FILENAME \
 && mkdir -p $DSF_HOME \
 && tar -zxf $DSF_FILENAME -C $DSF_HOME --strip-components=1 \
 && rm -f $DSF_FILENAME \
 && ln -sf $DSF_HOME/diff-so-fancy /usr/local/bin/

echo "Configuring diff-so-fancy ..."
git config --global alias.diff-so-fancy '!f() { [ -z "$GIT_PREFIX" ] || cd "$GIT_PREFIX" && git diff --color "$@" | diff-so-fancy | less --tabs=4 -RFX; }; f'
git config --global alias.show-so-fancy '!f() { [ -z "$GIT_PREFIX" ] || cd "$GIT_PREFIX" && git show --color "$@" | diff-so-fancy | less --tabs=4 -RFX; }; f'

