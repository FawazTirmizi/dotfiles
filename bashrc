
# User-added
# Set primary editor to vim
export EDITOR=vim
export VISUAL=vim

# Alias protonvpn
alias pvpn=protonvpn-cli

# Add go to PATH
export PATH=$PATH:/usr/local/go/bin

export PATH=$HOME/uiuc/cs426/llvm-12.0.1.obj/bin:$PATH

alias py=python3

. "$HOME/.cargo/env"

export PS1="\[$(tput bold)\]\[\033[38;5;47m\]\u\[$(tput sgr0)\]:\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]:\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;200m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]"

