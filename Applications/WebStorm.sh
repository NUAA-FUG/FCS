#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/webstorm/WebStorm-2018.3.tar.gz

# Unzip tar.gz 
sudo tar -zxvf WebStorm-2018.3.tar.gz -C /opt/ --transform s/WebStorm-183.4284.130/WebStorm/

# Delete package
sudo rm -f WebStorm-2018.3.tar.gz

# Install
cd /opt/WebStorm/bin/
./webstorm.sh 