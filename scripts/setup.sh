#!/bin/bash

while getopts 'grbcp' FLAG; do
    case "${FLAG}" in
        g) ./git.sh ;;
        r) ./repos.sh ;;
        b) cat bashrc >> $HOME/.bashrc ;;
	    c) ./link_configs.sh ;;
        p) ./packages.sh ;;
    esac
done



