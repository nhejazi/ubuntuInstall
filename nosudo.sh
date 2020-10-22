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


# install pyenv for project environment management
curl https://pyenv.run | bash


# conda for latest Python 3
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
