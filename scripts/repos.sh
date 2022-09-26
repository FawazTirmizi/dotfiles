#!/bin/bash
## Installs repos to use

function get_install_rust() {
    git clone $2
    cargo install --path $1
}

# Change directory
WORKDIR=$(pwd)
cd $HOME

 Software development-related repositories
mkdir -p dev
cd dev
git clone git@github.com:github/gitignore.git
git clone git@github.com:rui314/mold.git
cd ..

# Repositories for tools and applications
mkdir -p spotify
cd spotify
git clone git@github.com:Spotifyd/spotifyd.git &
git clone git@github.com:Rigellute/spotify-tui.git &
cd ..

mkdir -p coreutils
cd coreutils
get_install_rust bat git@github.com:sharkdp/bat.git &
get_install_rust fd git@github.com:sharkdp/fd.git &
get_install_rust exa git@github.com:ogham/exa.git &
cd ..

mkdir -p other_repos
cd customization
git clone git@github.com:neovim/neovim.git &
git clone git@github.com:Alexays/Waybar.git &
cd ..

# Return
cd $WORKDIR
