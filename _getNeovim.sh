#!/usr/bin/bash

apt-get install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable
apt-get update
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip
