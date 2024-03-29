
# User-added
# Set primary editor to vim
export EDITOR=vim
export VISUAL=vim

alias py=python3

. "$HOME/.cargo/env"

export PS1="\[$(tput bold)\]\[\033[38;5;47m\]\u\[$(tput sgr0)\]:\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]:\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;200m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

[ ! -n "$TMUX" ] && tmux
