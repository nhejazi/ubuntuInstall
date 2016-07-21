#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# Jekyll (for blog posts) install via Ruby (requires 2.0)
gem2.0 install jekyll


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update
apt-get install atom


# Pandoc (markup tool) install
echo "Downloading and installing Pandoc v.1.17.1-2 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
dpkg -i pandoc-1.17.1-2-amd64.deb


# fix installation issues arising from Atom & RStudio depedencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
