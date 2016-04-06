#!/usr/bin/bash

# get Vim
brew update
brew install vim
brew install neovim/neovim/neovim
brew linkapps macvim

# setup preferred configuration for Vim and MacVim
if [ -e ~/.vim ]; then 
  rm -rf ~/.vim; 
fi

if [ -e ~/.vimrc]; then 
  rm -f ~/.vimrc; 
fi

git clone git@github.com:nhejazi/myvimconfig.git ~/.vim
sh ~/.vim/_setup.sh
