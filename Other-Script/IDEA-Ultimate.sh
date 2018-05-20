#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/idea/ideaIU-2018.1.3.tar.gz

# Unzip it to /opt/ directory
sudo tar -zxvf ideaIU-2018.1.3.tar.gz -C /opt/ --transform s/idea-IU-181.4892.42/ideaIU/

# Delete packages
sudo rm ideaIU-2018.1.3.tar.gz 

# Install
cd /opt/ideaIU/bin/
./idea.sh 