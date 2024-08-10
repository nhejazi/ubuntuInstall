#!/bin/bash

# setup my dotfiles
git clone https://github.com/nhejazi/mydots.git $HOME/.dotfiles
cd $HOME/.dotfiles
bash ./_setup.sh

# preserve any existing Vim configuration files
if [ -e $HOME/.vim ]; then
  mv -f $HOME/.vim $HOME/.vim_orig;
fi

# get and setup config files for using Vim
git clone https://github.com/nhejazi/vim_edc.git $HOME/.vim
cd $HOME/.vim
bash ./_setup.sh
