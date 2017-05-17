#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# NodeJS install
apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
apt-add-repository "deb https://deb.nodesource.com/node_5.x $(lsb_release -sc) main"
apt-get update -y
apt-get install -y nodejs


# Atom (editor) install
add-apt-repository ppa:webupd8team/atom
apt-get update -y
apt-get install -y atom


# Hyper (terminal) install
echo "Installing Hyper v1.3.2 \n CHECK this is the most recent stable release."
wget http://github.com/zeit/hyper/releases/download/1.3.2/hyper_1.3.2.deb
dpkg -i hyper_1.3.2.deb


# asciinema (terminal recorder) install
apt-add-repository ppa:zanchey/asciinema
apt-get update -y
apt-get install -y asciinema


# add some global tools from NodeJS
npm install -g hpm-cli  # package/plug-in manager for Hyper (terminal)


# Hugo for modern static websites
apt-get install hugo


# Jekyll install via Ruby (requires 2.0)
gem2.0 install -y jekyll


# fix installation issues arising from dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."
