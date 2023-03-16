#!/bin/bash

function rm_ln() {
    rm $2
    ln $1 $2
}

# Add .vimrc
rm_ln ./vimrc $HOME/.vimrc

CONFIG=$HOME/.config/

mkdir -p $CONFIG/i3
rm_ln i3-config $CONFIG/i3/config

mkdir -p $CONFIG/polybar
rm_ln polybar-config $CONFIG/polybar/config

rm_ln alacritty.yml $HOME/.alacritty.yml

