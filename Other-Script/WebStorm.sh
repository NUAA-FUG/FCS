#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/webstorm/WebStorm-2018.1.4.tar.gz

# Unzip tar.gz 
sudo tar -zxvf WebStorm-2018.1.4.tar.gz -C /opt/ --transform s/WebStorm-181.5087.27/WebStorm/

# Delete package
sudo rm WebStorm-2018.1.4.tar.gz

# Install
cd /opt/WebStorm/bin/
./webstorm.sh 