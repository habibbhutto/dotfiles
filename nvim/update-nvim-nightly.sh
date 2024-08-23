#!/bin/bash

cd ~

rm nvim.appimage

wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

chmod +x ~/nvim.appimage
