#!/bin/bash


function check_make_dir() {
    [ ! -d "$1" ] && mkdir $1
}

function rm_ln() {
    rm $2
    ln $1 $2
}

# Add .vimrc
rm_ln ./vimrc $HOME/.vimrc

CONFIG=$HOME/.config/

check_make_dir $CONFIG/i3
rm_ln i3-config $CONFIG/i3/config

check_make_dir $CONFIG/polybar
rm_ln polybar-config $CONFIG/polybar/config

rm_ln alacritty.yml $HOME/.alacritty.yml

