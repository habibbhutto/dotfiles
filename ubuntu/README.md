# Verbose Machine

It is a reproducible development setup.  
[setup-dev-machine.sh](./scripts/setup-dev-machine.sh)  
[setup-podman.sh](./scripts/setup-podman.sh)  

This is set of scripts to setup a reproducible development machine.
The scripts are written and tested in Ubuntu-22.04, please take a note that some 
of the versions and dependencies might not work in other distros.  

It will setup folling tools and packages.

* [Lxd](https://linuxcontainers.org/)  
  Linux containers for full OS containers enabling development and experimentation.  
* [MicroK8s](https://microk8s.io/)  
  Enabling k8s development and experimentation enviroment.  
* [Podman](podman.io/)  
  Pod manager tool for building, running and managing containers. 
  Run [setup-podman.sh](./scripts/setup-podman.sh) to setup latest Podman version together with `docker-compose` integration. 
  It sets up `podman.socket` in rootless mode. and configures `DOCKER_HOST` env var for `docker-compose` to use.
  Once it's done you can test the setup by running `docker-compose up`, it will use the [docker-compose.yml](./docker-compose.yml) created for testing purpose.
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
* [Github CLI - gh](https://cli.github.com/)  
  Enabling Github access from terminal.
* [Vim](https://www.vim.org/) and [Neovim](neovim.io/)
  The Vim editor, and its fork neovim editor.
  Configure both editor and their plugs in using [vim-fiddle](https://github.com/habibbhutto/vim-fiddle)
  It installs all the plugins automatically, so the editors are ready to use out of box.

## Future work
* Install Clang and GDB
* Modularize the installation scripts
* Integrate [setup-podman.sh](./scripts/setup-podman.sh) with [setup-dev-machine.sh](./scripts/setup-dev-machine.sh) and test it  
* Install and Configure GoCD for development and experimentation  
