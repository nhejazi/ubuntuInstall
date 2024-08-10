#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi

# pandoc (markup swiss army knife)
echo "Installing Pandoc v3.3.1 \n CHECK version against the repo."
wget http://github.com/jgm/pandoc/releases/download/3.3/pandoc-3.3-1-amd64.deb
dpkg -i pandoc-3.3-1-amd64.deb
rm pandoc-*.deb

# quarto (technical publishing system)
echo "Installing Quarto v1.5.56 \n CHECK version against the repo."
wget http://github.com/quarto-dev/quarto-cli/releases/download/1.5.56/quarto-1.5-56-linux-amd64.deb
dpkg -i quarto-1.5-56-linux-amd64.deb
rm quarto-*.deb

# github cli (https://cli.github.com/)
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository -y https://cli.github.com/packages
apt update -y
apt install -y gh

# vscode editor
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update -y
apt install -y code

# zed editor
curl -f https://zed.dev/install.sh | sh

# firefox web browser
apt-add-repository -y ppa:ubuntu-mozilla-security/ppa
apt install -y firefox

# asciinema terminal recording
apt install -y asciinema

# try fixing issues by force installing
apt install -f -y
