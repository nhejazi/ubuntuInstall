#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root"
  exit
fi


# latex install
apt-get install texlive


# sbt install
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
apt-get update
apt-get install sbt


# java install
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer


# scala install
wget www.scala-lang.org/files/archive/scala-2.11.8.deb
dpkg -i scala-2.11.8.deb


# force install all of the above with dependencies
apt-get install -f
echo "If any warnings appeared describing dependency errors, run this script a second time to fix."
