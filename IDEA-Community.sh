#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2017.3.5.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIC-2017.3.5.tar.gz -C /opt/

# Install
cd /opt/idea-IC-173.4674.33/bin/
./idea.sh 