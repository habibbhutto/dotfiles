#!/bin/bash

echo "### INSTALLING DEPENDENCIES ###"
sudo apt-get -y update
sudo apt-get -y install podman

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

echo "### BUILDING CONMAN ###"
cd ~
git clone https://github.com/containers/conmon
cd conmon
git checkout tags/v2.1.4
export GOCACHE="$(mktemp -d)"
make
sudo make podman
sudo make install

echo "### BUILDING PODMAN ###"
cd ~
git clone https://github.com/containers/podman/
cd podman
git checkout tags/v4.3.0
make BUILDTAGS='seccomp apparmor systemd'
sudo make install PREFIX=/usr

sudo rm -rf ~/.local/share/containers/
sudo chmod 655 /var/run/podman
sudo chmod 666 /var/run/podman/podman.sock

systemctl daemon-reload
sudo systemctl start podman.socket

curl -H "Content-Type: application/json" --unix-socket /var/run/podman/podman.sock http://localhost/_ping

echo "export DOCKER_HOST=unix:///var/run/podman/podman.sock"
