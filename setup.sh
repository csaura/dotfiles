#!/bin/bash

if ! command -v brew > /dev/null; then
  echo "Homebrew not installed!"
  echo "In order to use this script please install homebrew from https://brew.sh"
  exit
fi

ln -s "$(pwd)"/.Brewfile ~/.Brewfile

brew bundle --global

