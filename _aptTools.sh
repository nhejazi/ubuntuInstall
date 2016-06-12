#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

# Pandoc (markup tool) install
echo -e "Downloading and installing Pandoc v.1.17.1-2 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
dpkg -i pandoc-1.17.0.2-1-amd64.deb

# Atom (editor) install
echo -e "Downloading and installing Atom v.1.8.0 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/atom/atom/releases/download/v1.8.0/atom-amd64.deb
dpkg -i atom-amd64.deb

# RStudio IDE install
echo -e "Downloading and installing RStudio v.0,99.902 \n PLEASE CHECK that this is the most recent stable release."
wget https://download1.rstudio.org/rstudio-0.99.902-amd64.deb
dpkg -i rstudio-0.99.902-amd64.deb

# Jekyll (for blog posts) install via Ruby (requires 2.0)
gem2.0 install jekyll

# fix installation issues arising from Atom & RStudio depedencies
apt-get install -f
echo -e "If any warnings appeared describing dependency errors, run this script a second time to fix."
