#!/bin/bash

mv ~/vim-fiddle .vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "source ~/.vim/.vimrc" >> .vimrc

echo "Vim config setup successful"
