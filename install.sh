#!/bin/env bash

echo
echo "######################################"
echo "#                                    #"
echo "#     Installation Script            #"
echo "#     RMIT-Coreteaching-Dotfiles     #"
echo "#                 By Adrian Mace     #"
echo "#                                    #"
echo "######################################"
echo

# Change directory to home dir

cd ~

# Replace dotfiles one by one, backing up existing files first.

echo "Replacing .vimrc"

if [ -e '.vimrc' ]; then
    echo "NOTICE: .vimrc found! Backing up current version to .vimrc.bak"
    mv ~/.vimrc ~/.vimrc.bak
fi

echo "Recreating .vimrc"
echo

wget --no-check-certificate \
https://raw.githubusercontent.com/adrianmace/rmit-coreteaching-dotfiles/master/.vimrc \
> /dev/null 2>&1

echo "Replacing .bash_profile"

if [ -e '.bash_profile' ]; then
    echo "NOTICE: .bash_profile found! Backing up current version to .bash_profile.bak"
    mv ~/.bash_profile ~/.bash_profile.bak
fi

echo "Recreating .bash_profile"
echo 

wget --no-check-certificate \
https://raw.githubusercontent.com/adrianmace/rmit-coreteaching-dotfiles/master/.bash_profile \
> /dev/null 2>&1

echo "Reloading bash with configuration"
echo 

if [ $SHELL == '/bin/bash' ]; then
    source ~/.bash_profile
else
    bash
fi
