#!/bin/bash

# setup my dotfiles
git clone https://github.com/nhejazi/mydots.git ~/.dotfiles
sh ~/.dotfiles/place_files.sh


# preserve any existing Vim configuration files
if [ -e ~/.vim ]; then
  mv -f ~/.vim ~/.vim_orig;
fi


# get and setup config files for using Vim
git clone https://github.com/nhejazi/vimForLife.git ~/.vim
sh ~/.vim/_setupVim.sh


# preserve any existing Neovim configuration files
if [ -e ~/.config/nvim ]; then
  mv -f ~/.config/nvim ~/.config/nvim_orig;
fi


# get and setup config files for using Neovim
git clone https://github.com/nhejazi/vimForLife.git ~/.config/nvim
sh ~/.config/nvim/_setupNeovim.sh


# install python tools from pypi
python -m pip install -U glances bpytop
