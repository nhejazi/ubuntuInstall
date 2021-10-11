#!/bin/bash

# setup my dotfiles
git clone https://github.com/nhejazi/mydots.git ~/.dotfiles
sh ~/.dotfiles/_setup.sh


# preserve any existing Vim configuration files
if [ -e ~/.vim ]; then
  mv -f ~/.vim ~/.vim_orig;
fi


# get and setup config files for using Vim
git clone https://github.com/nhejazi/vim_lyfe.git ~/.vim
sh ~/.vim/_setup.sh

