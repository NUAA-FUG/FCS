#!/bin/sh

cd ~/Downloads

# Download mendeley desktop for linux-x64
wget -q --show-progress https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming -O mendeley.tar.bz2

# Unzip tar.bz2 to folder /opt/

sudo tar -xvf mendeley.tar.bz2 -C /opt/

# Open /opt/ folder and rename mendeley
cd /opt/

echo use mv command to change the name of folder mendeleydesktop-x.x.x-linux-x86_64 to mendeleydesktop.like sudo mv mendeleydesktop-1.17.13-linux-x86_64/ mendeleydesktop/
# sudo mv mendeleydesktop-1.17.13-linux-x86_64/ mendeleydesktop/

# Open /bin/ folder
cd mendeleydesktop/bin/

# Run install script
./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop 

cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/

