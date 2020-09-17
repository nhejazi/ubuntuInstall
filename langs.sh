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


# NOTE: REPLACED BY CONDA
# install Python 3.7, dependencies, and pip
## NOTE: this results in pip, pip3, and pip3.7 all targeting python 3.7
#add-apt-repository -y ppa:deadsnakes/ppa
#apt-get update -y
#apt-get install -y python3.7 python3.7-dev python3.7-venv
#curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7


# install rust
apt install -y cargo


# java install
add-apt-repository -y ppa:webupd8team/java
apt update -y
apt install -y oracle-java8-installer


# latex install
apt install -y texlive-full


# force install all of the above with dependencies
apt install -f -y
echo "If any dependency warnings appeared, run this script a second time."
