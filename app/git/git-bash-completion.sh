#!/bin/bash -e

#GIT_VERSION=v2.28.0
GIT_VERSION=master

curl -fSL https://raw.githubusercontent.com/git/git/$GIT_VERSION/contrib/completion/git-completion.bash \
     -o /usr/local/opt/bash-completion/etc/bash_completion.d/git-completion.bash
     
# /usr/local/etc/bash_completion.d/git-completion.bash
# /usr/local/opt/bash-completion/etc/bash_completion.d/git-completion.bash

#brew unlink bash-completion
#brew link bash-completion
