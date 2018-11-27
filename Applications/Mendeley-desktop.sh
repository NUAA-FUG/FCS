#!/bin/sh

mendeleyPath="/opt/mendeleydesktop"
cd ~/Downloads

# Download mendeley desktop for linux-x64
wget -q --show-progress https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming -O mendeley.tar.bz2

# Unzip tar.bz2 to folder /opt/

sudo tar -xvf mendeley.tar.bz2 -C /opt/ --transform s/mendeleydesktop-1.19.2-linux-x86_64/mendeleydesktop/

# Delete package
sudo rm -f mendeley.tar.bz2

# Install
if [ ! -d "mendeleyPath" ]; then
    cd /opt/mendeleydesktop/bin/
    ./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop
else 
    cd /opt/mendeleydesktop/bin/
    ./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop
    sudo cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/
fi