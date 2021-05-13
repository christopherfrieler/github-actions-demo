#!/bin/bash
set -e

# prepare build directory:
mkdir -p build

# pull dependencies:
mkdir -p "build/downloads"
while read -r dependency; do
  download_path="build/downloads/$(basename "$dependency")"
  if [ ! -f "$download_path" ]; then
    curl "$dependency" -o "$download_path"
  else
    echo "$dependency is already present."
  fi
done <dependencies.txt

# build site:
mkdir -p build/site
cp src/* build/site/
cp build/downloads/* build/site/

# package site as zip-archive:
mkdir -p build/packages
zip -j build/packages/site.zip build/site/*
