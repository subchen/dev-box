#!/bin/bash -e

if [ -f /etc/bash_completion.d/git-prompt ]; then
    # ubuntu
    ln -sf /etc/bash_completion.d/git-prompt /usr/local/bin/git-prompt.sh
elif [ -f /usr/lib/git-core/git-sh-prompt ]; then
    # ubuntu
    ln -sf /usr/lib/git-core/git-sh-prompt /usr/local/bin/git-prompt.sh
elif [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    # mac brew
    ln -sf /usr/local/etc/bash_completion.d/git-prompt.sh /usr/local/bin/git-prompt.sh
elif [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
    # centos
    ln -sf /usr/share/git-core/contrib/completion/git-prompt.sh /usr/local/bin/git-prompt.sh
else
    curl -fSL https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o /usr/local/bin/git-prompt.sh
fi


CWD=$(cd $(dirname $0); pwd)

mkdir -p ~/.bash
cp $CWD/config/git-prompt.bash ~/.bash/

echo ". ~/.bash/git-prompt.bash" >> ~/.bashrc
