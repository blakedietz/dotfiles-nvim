#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf ~/.config/nvim
ln -s  ${DIR} ~/.config/nvim

# Deoplete requires python and a concomitant plugin
brew install python3
pip install neovim

