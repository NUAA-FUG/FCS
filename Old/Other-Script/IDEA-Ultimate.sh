#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIU-2018.1.2.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIU-2018.1.2.tar.gz -C /opt/

# Delete packages
sudo rm ideaIU-2018.1.2.tar.gz 

# Install
cd /opt/idea-IU-181.4668.68/bin/
./idea.sh 