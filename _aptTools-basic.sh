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


# HyperTerm (terminal emulator) install
echo "Downloading and installing HyperTemr v.0.7.0 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/zeit/hyperterm/releases/download/v0.7.0/hyperterm-0.7.0.deb
dpkg -i hyperterm-0.7.0.deb


# Pandoc (markup tool) install
echo "Downloading and installing Pandoc v.1.17.1-2 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/1.17.1/pandoc-1.17.1-2-amd64.deb
dpkg -i pandoc-1.17.1-2-amd64.deb


# fix installation issues arising from dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
