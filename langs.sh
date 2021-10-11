#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# install R and R-dev
add-apt-repository -y "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/"
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
apt update -y
apt install -y r-base r-base-core r-recommended r-base-dev


# download a Julia binary
echo "Downloading Julia v1.6.3 \nCHECK this is the most recent stable release."
wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.3-linux-x86_64.tar.gz
echo "Manual installation of Julia v1.6.3 will be required."


# install rust
apt install -y cargo


# java install
add-apt-repository -y ppa:webupd8team/java
apt update -y
apt install -y oracle-java8-installer


# latex install
apt install -y texlive-full


# try fixing issues by force installing
apt install -f -y
