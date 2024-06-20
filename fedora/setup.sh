#/bin/bash

##########################
# System tools and utils #
##########################

sudo dnf -y \
	install apt-transport-https \
	htop \
	curl \
	wget \
	httpie \
	unzip \
	zip \
	gzip \
	tar \
	"fd-find" \
	fzf \
	ripgrep

######################################
# Development tools and technologies #
######################################

# Git
sudo dnf install -y git
git config --global user.name "Habib Ahmed Bhutto"
git config --global user.email "habibbhutto@gmail.com"

# Github CLI 
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install -y gh --repo gh-cli

# k8s and Container tooling
# podman podman-desktop podman/docker-compose kind
# k8s
# kubectl
# skaffold
# helm
# sudo dnf install -y podman podman-desktop kind podman-compose etc

# Kernel sources and development libraries

# Neovide

# Vim and Neovim
sudo dnf install -y \
		neovim \
		vim \
		ctags \

# Code 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf check-update
sudo dnf install -y code # or code-insiders

# Database clients and tools
sudo dnf install -y postgresql

# C
# CPP
sudo dnf install -y \
	gcc \
	clang \
	clang-analyzer \
	clang-tools-extra \
	make \
	cmake 

# Go
sudo dnf install -y golang golang-x-tools-gopls

# Java
## sdkman
## java
## jdtls
## gradle
## maven


# Node
# Perl
# Python
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
sudo dnf install -y rust-analyzer

# V
# Zig

################
# Applications #
################
sudo dnf install -y gedit

sudo dnf install -y blender

sudo dnf install -y inkscape

sudo dnf install -y krita

# Rnote
sudo flatpak install flathub com.github.flxzt.rnote

# Email and calendar 
# TODO:
# How do I store all email data locally for offline use?
# -- What's the best approach pop3 or imap?
# How to save all the clendar information locally?
# -- Shall I really store calendar information locally?

# Got to check project status and activities
sudo dnf install -y geary

# Feels like breeze
# Issues with Google tasks, chats, etc
sudo dnf install -y thunderbird

# It seems clone of Geary
# sudo dnf install -y elementary-mail

# Little complicated
sudo dnf install -y evolution
# Gnome Calendar
# sudo flatpak install flathub org.gnome.Calendar


#########################
# System configurations #
#########################

#############################
# Gnome shell configuration #
#############################

#######################
# User configurations #
#######################

# curl -sS https://starship.rs/install.sh | sh
# echo "eval "$(starship init bash)"" >> ~/.bashrc
# ehco "set -o vi" >> ~/.bashrc
# cp shell/starship.toml ~/.config/starship.toml

# configure starship

# configure sdkman

# configure default editor and bash mode

# configure custom environment variables

# Trackpoint configuration