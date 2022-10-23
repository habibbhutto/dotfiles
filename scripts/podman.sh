#!/bin/bash

echo "**** Installing dependencies ****"
# Install podman from package manager
# So that we would have all the dependencies
sudo apt-get -y update
sudo apt-get -y install podman

# This build is based on podman documentation
# https://podman.io/getting-started/installation
sudo apt-get -y install \
  btrfs-progs \
  crun \
  git \
  golang-go \
  go-md2man \
  iptables \
  libassuan-dev \
  libbtrfs-dev \
  libc6-dev \
  libdevmapper-dev \
  libglib2.0-dev \
  libgpgme-dev \
  libgpg-error-dev \
  libprotobuf-dev \
  libprotobuf-c-dev \
  libseccomp-dev \
  libselinux1-dev \
  libsystemd-dev \
  pkg-config \
  uidmap \
  libapparmor-dev

echo "**** Building conman ****"
cd ~
git clone https://github.com/containers/conmon
cd conmon
git checkout tags/v2.1.4
export GOCACHE="$(mktemp -d)"
make
sudo make podman
sudo make install

echo "**** Building podman ****"
cd ~
git clone https://github.com/containers/podman/
cd podman
git checkout tags/v4.3.0
make BUILDTAGS='seccomp apparmor systemd'
sudo make install PREFIX=/usr

# This is to resolve unexpected lippod db issue
# https://github.com/containers/podman/issues/5114
sudo rm -rf ~/.local/share/containers/

# Use it for debugging purpose
# sudo chmod 655 /var/run/podman
# sudo chmod 666 /var/run/podman/podman.sock

# Docker compose setup is based on following article
# https://fedoramagazine.org/use-docker-compose-with-podman-to-orchestrate-containers-on-fedora/

sudo systemctl daemon-reload

# Rootless mode configuration
systemctl --user enable podman.socket
systemctl --user start podman.socket
systemctl --user status podman.socket

export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
curl -H "Content-Type: application/json" --unix-socket "/run/user/$UID/podman/podman.sock" http://localhost/_ping
echo ""

echo "export DOCKER_HOST="unix:///run/user/$UID/podman/podman.sock"" >> ~/.bashrc
echo "alias docker=podman" >> ~/.bashrc

# Enable this if you would like to have root-ful config
# The rootless and rootful can live side by side
# Root-ful mode configuration
# sudo systemctl enable podman.socket
# sudo systemctl start podman.socket
# sudo systemctl status podman.socket
# curl -H "Content-Type: application/json" --unix-socket /var/run/podman/podman.sock http://localhost/_ping
# echo "export DOCKER_HOST=unix:///var/run/podman/podman.sock" >> ~/.bashrc

# Clean up
echo "**** Clean up ****"
cd ~
sudo rm -rf conmon/ podman/
