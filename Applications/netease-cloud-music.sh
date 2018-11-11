#!/bin/sh

# Open Downloads directory
cd ~/Downloads

# Install some dependencies
sudo dnf install vlc -y
sudo dnf install libXScrnSaver -y

# Download the tar packages
wget -q --show-progress http://cdimage.deepin.com/applications/netease-cloud-music/64/netease_cloud_music_1.1.0_amd64_binary.tar.xz

# Unzip 
sudo tar -xvf netease_cloud_music_1.1.0_amd64_binary.tar.xz -C ~/Downloads

# Copy folder to / directory
sudo cp -r usr /

# Solve the iron problem
sudo sed -i 's#Icon=netease-cloud-music#Icon=/usr/share/icons/hicolor/scalable/apps/netease-cloud-music.svg#'  /usr/share/applications/netease-cloud-music.desktop

# Delete the file and folder after install
cd ~/Downloads
rm -f netease_cloud_music_1.1.0_amd64_binary.tar.xz 
rm -rf usr/