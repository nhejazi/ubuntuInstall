#!/bin/bash

# Pandoc (markup tool) install
wget http://github.com/jgm/pandoc/releases/download/1.17.0.2/pandoc-1.17.0.2-1-amd64.deb
dpkg -i pandoc-1.17.0.2-1-amd64.deb

# Atom (editor) install
wget http://github.com/atom/atom/releases/download/v1.7.2/atom-amd64.deb
dpkg -i atom-amd64.deb

# Jekyll (for blog posts) install via Ruby (requires 2.0)
gem2.0 install jekyll

# fix installation issues arising from Atom depedencies
apt-get install -f
