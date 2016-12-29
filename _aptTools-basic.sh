#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# Jekyll (blog tool) install via Ruby (requires 2.0)
gem2.0 install -y jekyll


# NodeJS install
apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
apt-add-repository "deb https://deb.nodesource.com/node_5.x $(lsb_release -sc) main"
apt-get update -y
apt-get install -y nodejs


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update -y
apt-get install -y atom


# Hyper (terminal emulator) install
echo "Installing Hyper (terminal) v.1.0.0 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/zeit/hyper/releases/download/1.0.0/hyper-1.0.0.deb
dpkg -i hyper-1.0.0.deb


# asciinema (terminal recording tool) install
apt-add-repository ppa:zanchey/asciinema
apt-get update -y
apt-get install -y asciinema


# add some global tools from Node.js
npm install -g diff-so-fancy  #much prettier git diffs
npm install -g how2  #use StackOverflow from command line
npm install -g hpm-cli  #package/plug-in manager for Hyperterm


# fix installation issues arising from dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."
