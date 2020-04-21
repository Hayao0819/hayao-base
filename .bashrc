#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# PowerLine
function _update_ps1() {
    PS1="$(~/.local/bin/powerline-shell $?)"
}
if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

if [[ -f ~/.aliases ]]; then
    source ~/.aliases
fi

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# PowerLine-bash
#PS1="$(/usr/local/bin/bash-powerline)"

export WINEARCH=win32
export VBOX_USB=usbfs
