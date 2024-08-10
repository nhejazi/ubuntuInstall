#!/bin/bash

if [[ "$EUID" -ne 0 ]]; then
  echo "This script must be run as root"
  exit
fi

# rig installer and version multiplexer for R
apt install -y r-rig

# install java
apt install default-jre

# TeXlive latex distribution
apt install -y texlive-full

# rustup installer for Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# juliaup installer and version multiplexer for Julia
curl -fsSL https://install.julialang.org | sh

# try fixing issues by force installing
apt install -f -y
