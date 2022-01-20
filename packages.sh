#!/bin/bash

function check_clone() {
    [ ! -d "$2" ] && git clone --recurse-submodules $1 $2
}

# Packages


# Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Mold
sudo apt-get update
sudo apt-get install -y build-essential git clang cmake libstdc++-10-dev libssl-dev libxxhash-dev zlib1g-dev
check_clone git@github.com:rui314/mold.git $HOME/utils/mold

# Alacritty
sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
git clone git@github.com:alacritty/alacritty.git $HOME/utils/alacritty


