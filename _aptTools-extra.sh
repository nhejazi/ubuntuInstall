#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# zsh, zsh completions, and oh-my-zsh
apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#chsh -s $(which zsh) $(whoami)  # keep bash as default shell for now...


# Pandoc (markup tool) install
echo "Installing Pandoc v.1.17.1-2 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
dpkg -i pandoc-1.17.1-2-amd64.deb


# RStudio IDE install
echo "Installing RStudio v.0,99.902 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-0.99.902-amd64.deb
dpkg -i rstudio-0.99.902-amd64.deb


# add some global tools from Node.js
npm install -g diff-so-fancy  #much prettier git diffs
npm install -g how2  #use StackOverflow from command line
npm install -g hpm-cli  #package/plug-in manager for Hyperterm


# add SSH tools for remote access
#apt-get install openssh-server


# fix installation issues arising from dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
