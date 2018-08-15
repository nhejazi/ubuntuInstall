#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# install R and R-dev
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/"
apt-get update -y
apt-get install -y r-base r-base-dev


# install Python 3.7, dependencies, and pip
## NOTE: this results in pip, pip3, and pip3.7 all targeting python 3.7
add-apt-repository ppa:deadsnakes/ppa
apt-get update -y
apt-get install -y python3.7 python3.7-dev python3.7-venv
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7


# install rust
apt-get install -y cargo


# java install
add-apt-repository ppa:webupd8team/java
apt-get update -y
apt-get install -y oracle-java8-installer


# latex install
apt-get install texlive-full


# force install all of the above with dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

