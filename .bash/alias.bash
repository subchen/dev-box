# alias

alias more='less'
alias vi='vim'

alias grep='grep -n --color'

# Detect which `ls` flavor is in use
if [ $(uname -s) == "Darwin" ]; then
	alias ll="ls -la -G" # mac
else
	alias ll="ls -la --color" # linux
fi
