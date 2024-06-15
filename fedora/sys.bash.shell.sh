#/bin/bash

curl -sS https://starship.rs/install.sh | sh
echo "eval "$(starship init bash)"" >> ~/.bashrc
ehco "set -o vi" >> ~/.bashrc
cp shell/starship.toml ~/.config/starship.toml
