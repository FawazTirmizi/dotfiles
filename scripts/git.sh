#!/bin/bash

DOTFILE_SETUP_NAME='Fawaz Tirmizi'
DOTFILE_SETUP_EMAIL=''
if [ -z "$DOTFILE_SETUP_NAME" ]
then
    echo "Set name for git config before continuing"
    exit -1
else 
    if [ -z "$DOTFILE_SETUP_EMAIL" ]
    then
        echo "Set email for git config before continuing"
        exit -1
    fi
fi

git config --global user.name $DOTFILE_SETUP_NAME
git config --global user.email $DOTFILE_SETUP_EMAIL

# Add global .gitignore 
ln ./gitignore $HOME/.gitignore
git config --global core.excludesfile $HOME/.gitignore
# Add a standard commit template

ln ./gitmessage $HOME/.gitmessage
git config --global commit.template ~/.gitmessage


