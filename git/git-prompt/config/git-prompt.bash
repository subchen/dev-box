. /usr/local/bin/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='[\[\e[1;34m\]\u@\h \[\e[1;32m\]\w\[\e[m\]]\[\e[1;35m\]$(__git_ps1)\[\e[m\]# '
