[ -r "/etc/bashrc" ] && . /etc/bashrc

for i in ~/.bash/*.bash; do
    [ -r "$i" ] && . "$i"
done

