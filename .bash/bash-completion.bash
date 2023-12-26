# bash_completion

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion # linux
elif [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion # macosx, brew (Intel)
elif [ -f /opt/homebrew/etc/bash_completion ]; then
    . /opt/homebrew/etc/bash_completion # macosx, brew (Apple Silicon)
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion # legacy
fi
