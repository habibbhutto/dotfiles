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
sudo dnf -y install podman
sudo flatpak install flathub io.podman_desktop.PodmanDesktop
# kubectl - latest version can be installed by enabling podman desktop extension
# kind - latest version can be installed by enabling podman desktop extension
# k8s - latest cluster can be created from podman desktop or using kind
# podman compose - latest version can be installed from podman desktop 

# skaffold
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/
rm ~/skaffold

# helm
sudo dnf install -y helm

# Google cloud
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-cli]
name=Google Cloud CLI
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el9-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

sudo dnf install -y google-cloud-cli

# Kernel sources and development libraries
sudo dnf install -y kernel-devel

# Vim and Neovim
sudo dnf install -y \
		neovim \
		vim \
		ctags \

# Neovide
# I think it turns out to be a distraction
# It's not available in default package repositories
# https://neovide.dev/installation.html
# cargo install --git https://github.com/neovide/neovide

# Code 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf check-update
sudo dnf install -y code # or code-insiders

# Database clients and tools
sudo dnf install -y postgresql

# C and CPP
sudo dnf install -y \
	gcc \
	clang \
	clang-analyzer \
	clang-tools-extra \
	make \
	cmake 

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
sudo dnf install -y rust-analyzer

# Go
sudo dnf install -y golang golang-x-tools-gopls

# Node
sudo dnf install -y nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc

nvm install v20
nvm use v20
curl -fsSL https://get.pnpm.io/install.sh | sh -
# https://github.com/typescript-language-server/typescript-language-server#installing
pnpm install -g typescript-language-server typescript nodmon

# Java
# sdkman
curl -s "https://get.sdkman.io" | bash
source "/home/$USER/.sdkman/bin/sdkman-init.sh"
# install java, maven and gradle using sdk man
sdk install java
sdk install maven
sdk install gradle

# jdtls - Install Java Language Server
# https://github.com/eclipse/eclipse.jdt.ls
curl https://raw.githubusercontent.com/eruizc-dev/jdtls-launcher/master/install.sh | bash

# WIP: Following are work in progress
# Perl - seems pre-installed in fedora
# Python - seems pre-installed in fedora
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

# Little complicated
sudo dnf install -y evolution
# Gnome Calendar
sudo dnf install -y gnome-calendar

#########################
# System configurations #
#########################
# install gnome extension manager 
sudo flatpak install org.gnome.Extensions
# install gnome extensions for dash, icons, etc
sudo flatpak install com.mattjakeman.ExtensionManager

#############################
# Gnome shell configuration #
#############################
# configure gnome using gnome config tools

# Fonts
mkdir -p ~/.local/share/fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
unzip FiraCode.zip -p ~/.local/share/fonts
rm FiraCode.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
unzip Hack.zip -p ~/.local/share/fonts
rm Hack.zip

#######################
# User configurations #
#######################
# configure bashrc 
# configure root profile

# Configure default editor and bash mode
echo 'alias nv=nvim' >> ~/.bashrc
echo 'export EDITOR=nvim' >> ~/.bashrc
echo 'export VISUAL=nvim' >> ~/.bashrc
echo 'export PAGER=less' >> ~/.bashrc
# This to enable colors in LESS but it doesn't work properly
# echo 'export LESS="-iMSx4 -FX"' >> ~/.bashrc

# Configure starship
# install and configure shell
curl -sS https://starship.rs/install.sh | sh
cp starship.toml ~/.config/starship.toml
echo 'eval "$(starship init bash)"' >> ~/.bashrc
# initialize sdkman
echo '#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!' >> ~/.bashrc
echo 'export SDKMAN_DIR="$HOME/.sdkman"' >> ~/.bashrc
echo '[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc
# Configure custom environment variables

# WIP Trackpoint configuration
# This got to be rules file to tune the trackpoint sensitivity
