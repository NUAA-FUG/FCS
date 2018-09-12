#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/webstorm/WebStorm-2018.2.tar.gz

# Unzip tar.gz 
sudo tar -zxvf WebStorm-2018.2.tar.gz -C /opt/ --transform s/WebStorm-182.3684.70/WebStorm/

# Delete package
sudo rm WebStorm-2018.2.tar.gz

# Install
cd /opt/WebStorm/bin/
./webstorm.sh 