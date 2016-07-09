#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

# get for genomic alignemnt(s)
apt-get install samtools

# get for genomic annotation(s)
apt-get install bedtools
