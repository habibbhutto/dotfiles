# Verbose Machine

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

* [Lxd](https://linuxcontainers.org/)  
  Linux containers for full OS containers enabling development and experimentation.  
* [MicroK8s](https://microk8s.io/)  
  Enabling k8s development and experimentation enviroment.  
* [Podman](podman.io/)  
  Pod manager tool for building, running and managing containers.  
  Run [setup-podman.sh](./scripts/setup-podman.sh) For the complete setup of latest Podman version together with docker-compose integration.
  It sets up and run podman.socket in rootless mode.  
* [NVM](https://github.com/nvm-sh/nvm) and [Nodejs](https://nodejs.org/en/)  
  Nodejs tooling, node version manager and nodejs.
* [Go](https://go.dev/)  
  The Go programming lanaguage.
* [Rust](https://www.rust-lang.org/)  
  The Rust programming lanauge.
* [GCC and G++](https://gcc.gnu.org/)  
  The GNU compiler collection and CPP compiler (g++).
* [Python](https://www.python.org/)  
  The python programming language and tools.
* Utilities  
  wget, curl, httpie, htop, fzf, fd-find, ripgrep
* [Git](https://git-scm.com/)
  The distributed version control system.
  Note: Please configure your git user.name and user.email at the start of the script.
* [Github cli - gh](https://cli.github.com/)  
  Enabling Github access from terminal.
* [Vim](https://www.vim.org/) and [Neovim](neovim.io/)
  The Vim editor, and its fork neovim editor.
  Configure both editor and their plugs in using [vim-fiddle](https://github.com/habibbhutto/vim-fiddle)
  It installs all the plugins automatically, so the editors are ready to use out of box.

## Future work
* Setup Java Development Kit  
* Setup Skaffold and Helm3
* Integrate setup-podman.sh and test it  
* Install and Configure GoCD for development and experimentation  
