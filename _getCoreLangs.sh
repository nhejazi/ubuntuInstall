#!/usr/bin/bash

# install Python 2 and 3
brew install python
brew install python3

# install R
brew install R

# install Julia
brew tap staticfloat/julia
brew install julia
brew update && brew upgrade julia

# install Scala
brew install scala --with-docs
