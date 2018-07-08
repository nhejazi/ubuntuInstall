#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# pandoc (markup conversion tool) install
echo "Installing Pandoc v.2.2.1-1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/2.2.1/pandoc-2.2.1-1-amd64.deb
dpkg -i pandoc-2.2.1-1-amd64.deb


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update -y
apt-get install -y atom


# RStudio IDE install
echo "Installing RStudio IDE v.1.0.44 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-1.0.44-amd64.deb
dpkg -i rstudio-1.0.44-amd64.deb


# Hyper (terminal) install
echo "Installing Hyper v2.1.0-canary.2 \nCHECK this is the most recent stable release."
wget http://github.com/zeit/hyper/releases/download/2.1.0-canary.2/hyper_2.1.0-canary.2_amd64.deb
dpkg -i hyper_2.1.0-canary.2_amd64.deb


# fix installation issues arising from dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

