#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2018.1.4.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIC-2018.1.4.tar.gz -C /opt/ --transform s/idea-IC-181.5087.20/ideaIC/

# Delete tar package
sudo rm ideaIC-2018.1.4.tar.gz

# Install
cd /opt/ideaIC/bin/
./idea.sh 