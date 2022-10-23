# cd ~/Downloads

# sudo cp -rp firefox*.tar.bz2 /opt

# sudo rm -rf firefox*.tar.bz2

# cd /opt

# sudo tar xjf firefox*.tar.bz2

# sudo rm -rf firefox*.tar.bz2

# sudo chown -R $USER /opt/firefox

# sudo echo "export PATH=/opt/firefox/firefox:$PATH" >> ~/.bashrc

cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Name=Firefox Developer 
GenericName=Firefox Developer Edition
Exec=/opt/firefox/firefox %u
Terminal=false
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Type=Application
Categories=Application;Network;X-Developer;
Comment=Firefox Developer Edition Web Browser.
StartupWMClass=Firefox Developer Edition
EOL

chmod +x ~/.local/share/applications/firefoxDeveloperEdition.desktop
