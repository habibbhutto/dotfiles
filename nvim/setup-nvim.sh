#!/bin/bash

ln -s $(pwd)/nvim ~/.config/

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Neovim config setup successful"

