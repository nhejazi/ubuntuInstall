#!/usr/bin/bash

## Note - Python2, Python3, R, are working; Julia, Scala return errors

# install Python 2 and 3
brew install python
brew install python3

# install R
brew install R --without-x11

# install Julia
brew tap staticfloat/julia
brew install julia
brew update && brew upgrade julia

# install Scala
brew install scala --with-docs
