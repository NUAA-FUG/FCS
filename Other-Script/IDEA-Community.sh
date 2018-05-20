#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2018.1.3.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIC-2018.1.3.tar.gz -C /opt/ --transform s/idea-IC-181.4892.42/ideaIC/

# Delete tar package
sudo rm ideaIC-2018.1.3.tar.gz

# Install
cd /opt/ideaIC/bin/
./idea.sh 