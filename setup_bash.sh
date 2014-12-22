#!/usr/bin/env bash

# This script is meant to get bash setup on Ubuntu with my customizations.

# Written by hampsonk+github@gmail.com, 2014


PREFIX="****"

BASHRC="$HOME/.bashrc"
BASH_ALIASES_SHARED="$HOME/.bash_aliases_shared"


if [[ -f $BASHRC && ! -h $BASHRC ]]; then
    echo "Backing up existing .bashrc file to .bashrc.orig"
    mv $BASHRC ${BASHRC}.orig
fi


echo "$PREFIX Linking bashrc from git repo into home directory"
ln -s ~/workspace/dotfiles/bashrc $BASHRC


if [[ -f $BASH_ALIASES_SHARED && ! -h $BASH_ALIASES_SHARED ]]; then
    echo "Backing up existing .bashrc_aliases_shared file to .bashrc_aliases_shared.orig"
    mv $BASH_ALIASES_SHARED ${BASH_ALIASES_SHARED}.orig
fi


echo "$PREFIX Linking .bashrc_aliases_shared from git repo into home directory"
ln -s ~/workspace/dotfiles/bash_aliases_shared $BASH_ALIASES_SHARED


echo "$PREFIX NOTE: You need to restart or re-source .bashrc before the changes take effect."

