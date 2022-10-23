# verbose-machine

It is a reproducible development setup.
[setup-dev-machine.sh](./scripts/setup-dev-machine.sh)
[setup-podman.sh](./scripts/setup-podman.sh)

This is set of scripts and tools to setup a reproducible development setup.
The scripts are written and tested in Ubuntu-22.04, please take a note that some 
of the versions and dependencies might not work in other distros.  

I maintain these scripts for my own use, please take a note that they may
break break occassionally or might not work in your Ubuntu version for 
some reason or the versions and dependencies are outdated.

It will setup folling tools and packages.

* Lxd
* MicroK8s
* Podman  
  Run [setup-podman.sh](./scripts/setup-podman.sh) For the complete setup of latest Podman version together with docker-compose integration.
  It sets up and run podman.socket in rootless mode.
* NVM and Nodejs
* Go
* Rust
* GCC
* G++
* Python
* Utilities
  wget, curl, httpie, htop, fzf, fd-find, ripgrep
* Git, Github cli - gh
  Configures git user.name and user.email
* Vim and NVIM
  Together with config from [vim-fiddle](https://github.com/habibbhutto/vim-fiddle)
  And install all the plugins, so it is ready to use out of box.
