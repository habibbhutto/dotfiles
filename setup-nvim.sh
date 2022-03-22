#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "source ~/vim-fiddle/vim/.vimrc" > ~/.vimrc

echo "Vim config setup successful"

echo "source ~/vim-fiddle/nvim/init.vim" > ~/.config/nvim/init.vim

echo "Nvim config setup successful"
