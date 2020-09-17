#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi

# conda for latest Python 3
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# pandoc (markup conversion tool)
echo "Installing Pandoc v.2.9.2.1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-1-amd64.deb
dpkg -i pandoc-2.9.2.1-1-amd64.deb


# Hugo (modern static site generator)
echo "Installing Hugo v0.72.0 \nCHECK this is the most recent stable release."
wget https://github.com/gohugoio/hugo/releases/download/v0.72.0/hugo_extended_0.72.0_Linux-64bit.deb
dpkg -i hugo_extended_0.72.0_Linux-64bit.deb


# GitHub CLI
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository -y https://cli.github.com/packages
apt update -y
apt install -y gh


# asciinema (terminal recorder)
apt-add-repository -y ppa:zanchey/asciinema
apt update -y
apt install -y asciinema


# fix installation issues arising from dependencies
apt install -f -y
echo "If any dependency warnings appeared, run this script a second time."
