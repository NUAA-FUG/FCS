#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/webstorm/WebStorm-2018.2.3.tar.gz

# Unzip tar.gz 
sudo tar -zxvf WebStorm-2018.2.3.tar.gz -C /opt/ --transform s/WebStorm-182.4323.44/WebStorm/

# Delete package
sudo rm WebStorm-2018.2.3.tar.gz

# Install
cd /opt/WebStorm/bin/
./webstorm.sh 