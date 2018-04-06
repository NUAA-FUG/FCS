#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2018.1.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIC-2018.1.tar.gz -C /opt/

# Install
cd /opt/idea-IC-181.4203.550/bin/
./idea.sh 