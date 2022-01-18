#!/bin/bash
## Installs repos to use
function check_make_dir() {
    [ ! -d "$1" ] && mkdir $1
}

# Change directory
WORKDIR=$(pwd)
cd $HOME

# Software development-related repositories
check_make_dir software_dev
cd software_dev
git clone git@github.com:github/gitignore.git
git clone git@github.com:rui314/mold.git
cd ..

# Repositories for tools and applications
check_make_dir spotify
cd spotify
git clone git@github.com:Spotifyd/spotifyd.git
git clone git@github.com:Rigellute/spotify-tui.git


# Return
cd $WORKDIR
