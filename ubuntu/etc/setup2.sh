#!/bin/bash

echo 'Setting up dev machine'

sudo apt install apt-transport-https
# sudo curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg
# sudo curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list >/etc/apt/sources.list.d/openvpn3.list

# sudo apt -y install apt-transport-https
# sudo curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt -y update
sudo apt -y upgrade

# VPN toolsnpm install --glonpm install --global yarnbal yarn
sudo apt -y install openvpn3

# General utilities and tools
sudo apt -y install htop
sudo apt -y install curl
sudo apt -y install wget
sudo apt -y install httpie

# Code editors
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb -P ~/
sudo apt install ~/nvim-linux64.deb
sudo apt -y install vim
sudo apt install fd-find
sudo apt install fzf
sudo apt install ripgrep

# Version control
sudo apt -y install git
sudo apt -y install gh

# Programming languages and compilers
sudo apt -y install gcc g++ make cmake
sudo apt -y install python3 python-is-python3
sudo apt install golang-go
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## nodejs setup
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo "export NVM_DIR="$HOME/.nvm"" >> ~/.bashrc
echo "[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm"  >> ~/.bashrc
echo "[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.bashrc
source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install v12
nvm use v12

# Containerization tools
sudo apt -y install podman
# Setup docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# Database clients and tools
sudo apt -y install postgresql-client

# nodeRdKafka lib dependencies
sudo apt install -y libsasl2-dev libsasl2-modules libssl-dev
#export DOCKER_HOST=unix:/tmp/podman-run-1000/podman/podman.sock
echo "export DOCKER_HOST=localhost:2375" >> ~/.bashrc

echo "alias docker=podman" >> ~/.bashrc
echo "alias nv=~/nvim" >> ~/.bashrc

echo "export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"" >> ~/.bashrc

source ~/.bashrc
