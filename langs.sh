#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# install R and R-dev
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | \
  sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository -y \
  "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
apt update -y
apt install -y r-base r-base-core r-recommended r-base-dev


# install Julia but also download recent binary
apt install -y julia
echo "Downloading Julia v1.6.3 \nCHECK this is the most recent stable release."
wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.3-linux-x86_64.tar.gz
tar -xf julia-1.6.3-linux-x86_64.tar.gz
echo "Manual installation of Julia v1.6.3 will be required."


# install rust and java
apt install -y cargo default-jre


# TeXlive latex distribution
apt install -y texlive-full


# try fixing issues by force installing
apt install -f -y
