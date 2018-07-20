#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi


# latex install
apt-get install -y texlive-full


# java install
add-apt-repository ppa:webupd8team/java
apt-get update -y
apt-get install -y oracle-java8-installer


# install rust
curl https://sh.rustup.rs -sSf | sh


# sbt install
#echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
#apt-get update -y
#apt-get install -y sbt


# scala install
#wget www.scala-lang.org/files/archive/scala-2.12.0.deb
#dpkg -i scala-2.12.0.deb


# force install all of the above with dependencies
apt-get install -f -y
echo "If any dependency warnings appeared, run this script a second time."

