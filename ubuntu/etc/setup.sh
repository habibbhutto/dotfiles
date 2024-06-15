#!/bin/bash

echo 'Setting up dev machine'

sudo apt install apt-transport-https
sudo curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg

curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list >/etc/apt/sources.list.d/openvpn3.list

sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt -y install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

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
sudo apt -y install vim
sudo snap install nvim --classic

# Version control
sudo apt -y install git
sudo apt -y install gh

# Programming languages and compilers
sudo apt -y install gcc g++ make cmake
sudo apt -y install python3 python-is-python3
sudo snap install go --classic

## nodejs setup
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
npm install --global yarn
nvm install 12
npm install --global yarn

# Containerization tools
sudo apt -y install podman

# Database clients and tools
sudo apt -y install postgresql-client

# nodeRdKafka lib dependencies
sudo apt install -y libsasl2-dev libsasl2-modules libssl-dev
