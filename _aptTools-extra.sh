#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# zsh, zsh completions, and oh-my-zsh
apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# Pandoc (markup tool) install
echo "Installing Pandoc v.1.17.2-1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb
dpkg -i pandoc-1.17.2-1-amd64.deb


# RStudio IDE install
echo "Installing RStudio v.0.99.903 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-0.99.903-amd64.deb
dpkg -i rstudio-0.99.903-amd64.deb


# add some global tools from Node.js
npm install -g diff-so-fancy  #much prettier git diffs
npm install -g how2  #use StackOverflow from command line
npm install -g hpm-cli  #package/plug-in manager for Hyperterm


# fix installation issues arising from dependencies
apt-get install -f
echo "If any dependency warnings appeared, run this script a second time."
