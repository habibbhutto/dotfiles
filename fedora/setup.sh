#/bin/bash
# TODO:
# * Configure trackpoint for T480
#   https://wiki.archlinux.org/title/TrackPoint
#   https://bbs.archlinux.org/viewtopic.php?id=227818
#   https://wiki.archlinux.org/title/TrackPoint#systemd.path_unit
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
	ripgrep \
  tmux

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

######################################
# Development tools and technologies #
######################################

# Git
sudo dnf install -y git
git config --global user.name "Habib Ahmed Bhutto"
git config --global user.email "habibbhutto@gmail.com"

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

# Github CLI 
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install -y gh --repo gh-cli

# k8s and Container tooling
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER

sudo dnf -y install podman
sudo flatpak install flathub io.podman_desktop.PodmanDesktop
# kubectl - latest version can be installed by enabling podman desktop extension
# kind - latest version can be installed by enabling podman desktop extension
# k8s - latest cluster can be created from podman desktop or using kind
# podman compose - latest version can be installed from podman desktop 

# skaffold
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/
rm skaffold

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
# cp -r neovide/ ~/.config/
ln -s $(pwd)/neovide ~/.config/

# Alacritty 
sudo dnf install -y alacritty
# cp -r alacritty/ ~/.config/
ln -s $(pwd)/alacritty ~/.config/
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# cp -r tmux/ ~/.config/
ln -s $(pwd)/tmux ~/.config/
git clone https://github.com/nordtheme/tmux ~/.config/tmux/themes/nord-tmux

# Wezterm
flatpak install flathub org.wezfurlong.wezterm
ln -s $(pwd)/wezterm ~/.config/

# Code 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
sudo dnf check-update
sudo dnf install -y code # or code-insiders

# Zed editor
curl -f https://zed.dev/install.sh | sh

# Sublime editor
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

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
rustup component add rust-analyzer

# Go
sudo dnf install -y golang golang-x-tools-gopls
go install golang.org/x/tools/gopls@latest

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

# Lua
brew install lua-language-server

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
# gnome tweaks
sudo dnf install -y gnome-tweaks
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
unzip FiraCode.zip -d ~/.local/share/fonts
rm FiraCode.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
unzip Hack.zip -d ~/.local/share/fonts
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
