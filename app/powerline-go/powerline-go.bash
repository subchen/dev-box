# powerline-go

function _update_ps1() {
    # PS1="$(powerline-go -error $?)"
    PS1="$(powerline-go -modules ssh,cwd,perms,git,hg,jobs,exit,root -cwd-mode plain -error $?)"
}

if [ "$TERM" != "linux" ] && [ -f "/usr/local/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
