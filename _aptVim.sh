#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# get Vim and NeoVim
add-apt-repository ppa:jonathonf/vim
add-apt-repository ppa:neovim-ppa/unstable
apt-get update -y
apt-get upgrade -y
apt-get install -y vim
apt-get install vim-nox # required for python support on Vim 8.0+ (for YCM)
apt-get install -y neovim


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
