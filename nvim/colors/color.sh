rm ~/.config/alacritty/themes/theme.toml

ln -s ~/.config/alacritty/themes/themes/$1.toml ~/.config/alacritty/themes/theme.toml

touch ~/.config/alacritty/alacritty.toml

echo $1
