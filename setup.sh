#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.config/nvim
ln -s  ${DIR} ~/.config/nvim

pip3.8 install pynvim

if [ ! -d "$HOME/.vim/backups" ];
then
    mkdir -p "$HOME/.vim/backups"
fi

if [ ! -d "$HOME/.vim/swaps" ];
then
    mkdir -p "$HOME/.vim/swaps"
fi

if [ ! -d "$HOME/.vim/undo" ];
then
    mkdir -p "$HOME/.vim/undo"
fi
