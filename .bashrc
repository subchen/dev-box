# .bashrc

# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

## Load from ~/.bash/*.bash
for i in ~/.bash/*.bash ; do
    [ -r "$i" ] && source "$i"
done
