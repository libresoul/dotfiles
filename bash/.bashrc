#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

for i in ~/.scripts/*
do
    [ -f "$i" ] && source "$i"
done

set -o vi
bind -m vi-insert 'Control-l: clear-screen'

bind '"\C-f":"tmux-sessionizer\n"'
bind '"\C-a":"tmux a\n"'
bind '"\e\r":"xdg-open .\n"'

eval "$(starship init bash)"
eval "$(zoxide init bash)"

. "/home/damindu/.local/share/bob/env/env.sh"
# . /usr/share/autojump/autojump.bash
. /usr/share/fzf/completion.bash
. /usr/share/fzf/key-bindings.bash

HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
