#!/bin/sh

cd ~/Downloads

# Download mendeley desktop for linux-x64
wget -q --show-progress https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming -O mendeley.tar.bz2

# Unzip tar.bz2 to folder /opt/

sudo tar -xvf mendeley.tar.bz2 -C /opt/ --transform s/mendeleydesktop-1.19.1-linux-x86_64/mendeleydesktop/

# Delete package
sudo rm mendeley.tar.bz2

# Install
cd /opt/mendeleydesktop/bin/
./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop
sudo cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/

