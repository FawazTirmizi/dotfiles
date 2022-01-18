#!/bin/bash

# Packages


# Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# Mold
apt-get update
apt-get install -y build-essential git clang cmake libstdc++-10-dev libssl-dev libxxhash-dev zlib1g-dev
git clone git@github.com:rui314/mold.git

# Alacritty
apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
git clone git@github.com:alacritty/alacritty.git


