#!/bin/sh

# cd ~/Downloads

# # Download mendeley desktop for linux-x64
# wget -q --show-progress https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming -O mendeley.tar.bz2

# # Unzip tar.bz2 to folder /opt/

# sudo tar -xvf mendeley.tar.bz2 -C /opt/

# Open /opt/ folder and rename mendeley
cd /opt/

ls

# if the folder named mendeleydesktop is already here.Delete it and start install.
echo -n "Is there a folder named mendeleydesktop in /opt/ directory? [y/n (default is n]: ";
read ans
if [ $ans = "y" -o $ans = "Y" ];
then
    sudo rm -rf mendeleydesktop
    sudo mv mendeleydesktop-1.18-linux-x86_64/ mendeleydesktop/
    cd mendeleydesktop/bin/
    ./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop 

    sudo cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/
else
    sudo mv mendeleydesktop-1.18-linux-x86_64/ mendeleydesktop/
    cd mendeleydesktop/bin/
    ./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop 
    sudo cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/
fi

# # Open /bin/ folder
# cd mendeleydesktop/bin/

# # Run install script
# ./install-mendeley-link-handler.sh /opt/mendeleydesktop/bin/mendeleydesktop 

# sudo cp /opt/mendeleydesktop/share/icons/hicolor/128x128/apps/mendeleydesktop.png /usr/share/icons/

