#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2018.1.2.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIC-2018.1.2.tar.gz -C /opt/

# Delete tar package
sudo rm ideaIC-2018.1.2.tar.gz

# Install
cd /opt/idea-IC-181.4668.68/bin/
./idea.sh 