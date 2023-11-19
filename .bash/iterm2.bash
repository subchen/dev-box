# disable bracketed paste
# https://www.supertechcrew.com/extra-characters-paste-ssh-bracketed-paste/
if [ "$PS1" ]; then
  printf 'e[?2004l"
fi
