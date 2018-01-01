#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# pandoc (markup conversion tool) install
echo "Installing Pandoc v.1.17.2-1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.2/pandoc-1.17.2-1-amd64.deb
dpkg -i pandoc-1.17.2-1-amd64.deb


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update -y
apt-get install -y atom


# RStudio IDE install
echo "Installing RStudio IDE v.1.0.44 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-1.0.44-amd64.deb
dpkg -i rstudio-1.0.44-amd64.deb


# fix installation issues arising from dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

