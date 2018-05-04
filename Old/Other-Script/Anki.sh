#!/bin/sh

cd ~/Downloads

# Judge your computer system
uname -r

echo "What's version of your computer,32 bit or 64 bit?(32/64)[default is 64]: ";
read bit
if [ $bit = "32" ];
then 
    wget -q --show-progress https://apps.ankiweb.net/downloads/current/anki-2.0.50-i386.tar.bz2
    sudo tar -xvf anki-2.0.50-i386.tar.bz2 -C /opt/
else
    wget -q --show-progress https://apps.ankiweb.net/downloads/current/anki-2.0.50-amd64.tar.bz2
    sudo tar -xvf anki-2.0.50-amd64.tar.bz2 -C /opt/
fi

# Start install
cd /opt/anki-2.0.50/
sudo make install