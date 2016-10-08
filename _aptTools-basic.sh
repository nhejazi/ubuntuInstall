#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# Jekyll (for blog posts) install via Ruby (requires 2.0)
gem2.0 install jekyll


# install NodeJS and related (e.g., npm) via PPA
apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
apt-add-repository "deb https://deb.nodesource.com/node_5.x $(lsb_release -sc) main"
apt-get update
apt-get install nodejs


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update
apt-get install atom


# Hyper (previously HyperTerm) terminal emulator install
echo "Installing Hyper (terminal) v.0.8.1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/zeit/hyper/releases/download/0.8.1/hyper-0.8.1-amd64.deb
dpkg -i hyper-0.8.1-amd64.deb


# fix installation issues arising from dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
