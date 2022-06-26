#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# pandoc (markup conversion tool)
echo "Installing Pandoc v.2.18.1 \n PLEASE CHECK that this is the most recent stable release."
wget http://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-1-amd64.deb
dpkg -i pandoc-2.18-1-amd64.deb
rm pandoc-*.deb


# Hugo (modern static site generator)
echo "Installing Hugo v0.101.0 \nCHECK this is the most recent stable release."
wget https://github.com/gohugoio/hugo/releases/download/v0.101.0/hugo_extended_0.101.0_Linux-64bit.deb
dpkg -i hugo_extended_0.101.0_Linux-64bit.deb
rm hugo_*.deb


# littler, an R CLI frontend (https://github.com/eddelbuettel/littler)
apt install -y littler
ln -s /usr/bin/r /usr/local/bin/lr


# GitHub CLI (https://cli.github.com/)
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository -y https://cli.github.com/packages
apt update -y
apt install -y gh


# asciinema terminal recording
apt install -y asciinema


# the VSCode editor
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update -y
apt install -y code


# Firefox web browser
apt-add-repository -y ppa:ubuntu-mozilla-security/ppa
apt install -y firefox


# try fixing issues by force installing
apt install -f -y
