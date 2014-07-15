#!/usr/bin/env bash

# This script is meant to get zsh setup on Ubuntu.

PREFIX="****"

echo "$PREFIX Installing zsh package..."
apt-get -y install zsh
echo "$PREFIX Done"

echo "$PREFIX Installing zsh-doc package..."
apt-get -y install zsh-doc
echo "$PREFIX Done"


echo "$PREFIX Cloning oh-my-zsh from github..."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh


if [ -f ~/.zshrc ]; then
    echo "Backing up existing .zshrc file to .zshrc.orig"
    cp ~/.zshrc ~/.zshrc.orig
fi


echo "$PREFIX Setting zsh as default shell..."
chsh -s /bin/zsh
echo "$PREFIX Done"


echo "$PREFIX Linking zshrc from git repo into home directory"
ln -s ~/workspace/dotfiles/zshrc ~/.zshrc

echo "$PREFIX Linking oh-my-zsh custom theme from git repo into oh-my-zsh custom directory"
ln -s ~/workspace/dotfiles/oh-my-zsh/custom/agnoster-cust.zsh-theme ~/.oh-my-zsh/custom/agnoster-cust.zsh-theme

echo "$PREFIX NOTE: You need to restart before the changes take effect."
echo "$PREFIX NOTE: You need to change the font in the terminal settings to be one of the Powerline-compatible fonts."

