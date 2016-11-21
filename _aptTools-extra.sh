#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# zsh + zsh completions
apt-get install -y zsh


# set up oh-my-zsh dotfile collection...but not automatically
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# pandoc (markup conversion tool) install
echo "Installing Pandoc v.1.17.2-1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb
dpkg -i pandoc-1.17.2-1-amd64.deb


# RStudio IDE install
echo "Installing RStudio IDE v.1.0.44 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-1.0.44-amd64.deb
dpkg -i rstudio-1.0.44-amd64.deb


# RStudio Server install
echo "Installing RStudio Server v.1.0.44 \n PLEASE CHECK that this is the most recent stable release."
apt-get install -y gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.0.44-amd64.deb
gdebi rstudio-server-1.0.44-amd64.deb


# fix installation issues arising from dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."
