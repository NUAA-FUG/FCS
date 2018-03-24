#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIU-2017.3.5.tar.gz 

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIU-2017.3.5.tar.gz -C /opt/

# Install
cd /opt/idea-IU-173.4674.33/bin/
./idea.sh 