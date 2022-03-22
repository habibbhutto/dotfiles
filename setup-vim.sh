#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "source ~/vim-fiddle/vim/vimrc.vim" > ~/.vimrc

echo "Vim config setup successful"
