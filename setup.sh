#!/bin/bash

if ! command -v brew > /dev/null; then
  echo "Homebrew not installed!"
  echo "In order to use this script please install homebrew from https://brew.sh"
  exit
fi

echo "Setting brew"

ln -s "$(pwd)"/.Brewfile ~/.Brewfile

brew bundle --global


echo "Setting vim"

if [ ! -d ~/.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

ln -s "$(pwd)"/vim/vimrc ~/.vimrc
ln -s "$(pwd)"/vim/.nvim ~/.config/nvim/init.vim

echo "Setting emacs"

if [ ! -d ~/.emacs.d ]; then
  git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

ln -s "$(pwd)"/emacs/.spacemacs ~/.spacemacs

