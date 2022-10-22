#!/bin/bash

echo 'Setting up dev machine'

sudo apt -y update
sudo apt -y upgrade

sudo apt -y install apt-transport-https

echo "[boot]" | sudo tee /etc/wsl.conf
echo "systemd=true" | sudo tee -a /etc/wsl.conf 

# sudo curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg
# sudo curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list >/etc/apt/sources.list.d/openvpn3.list

# sudo apt -y install apt-transport-https
# sudo curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
# echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null


# VPN toolsnpm install --glonpm install --global yarnbal yarn
# sudo apt -y install openvpn3

# General utilities and tools
sudo apt -y install htop \
	curl \
	wget \
	httpie

# Code editors
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb -P ~/
sudo apt -y install ~/nvim-linux64.deb
rm ~/nvim-linux64.deb

sudo apt -y install vim \
	"fd-find" \
	fzf \
	ripgrep

# Version control
sudo apt -y install git gh

# Programming languages and compilers
sudo apt -y install \
	gcc \
	g++ \
	make \
	cmake \
	python3 \
	python-is-python3 \
	golang-go \
	yarn
## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

## nodejs
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo "export NVM_DIR="$HOME/.nvm"" >> ~/.bashrc
echo "[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm"  >> ~/.bashrc
echo "[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.bashrc

# load nvm to install nodejs
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

#export DOCKER_HOST=unix:/tmp/podman-run-1000/podman/podman.sock
echo "export DOCKER_HOST=localhost:2375" >> ~/.bashrc
echo "alias docker=podman" >> ~/.bashrc
echo "alias nv=nvim" >> ~/.bashrc
# echo "export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"" >> ~/.bashrc
echo "export GDK_SCALE=1" >> ~/.bashrc
echo "export GDK_DPI_SCALE=1.5" >> ~/.bashrc

# Database clients and tools
sudo apt -y install postgresql-client

# nodeRdKafka lib dependencies
# sudo apt install -y libsasl2-dev libsasl2-modules libssl-dev

cd ~ && git clone https://github.com/habibbhutto/vim-fiddle.git && cd vim-fiddle

sh ~/vim-fiddle/setup-nvim.sh

vim -c 'PlugInstall' \
    -c 'qa!'

nvim -c 'PlugInstall' \
     -c 'qa!'

git config --global user.name "Habib Ahmed Bhutto"
git config --global user.email "habibbhutto@gmail.com"
