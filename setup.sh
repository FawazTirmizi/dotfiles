#!/bin/bash

function check_make_dir() {
    [ ! -d "$1" ] && mkdir $1
}

while getopts 'grb' FLAG; do
    case "${FLAG}" in
        g) ./git.sh ;;
        r) ./repos.sh ;;
        b) cat bashrc >> $HOME/.bashrc ;;
    esac
done

# Add .vimrc
ln ./vimrc $HOME/.vimrc

CONFIG=$HOME/.config/

check_make_dir $CONFIG/i3
ln i3-config $CONFIG/i3/config

check_make_dir $CONFIG/polybar
ln polybar-config $CONFIG/polybar/config

ln alacritty.yml $HOME/.alacritty.yml





