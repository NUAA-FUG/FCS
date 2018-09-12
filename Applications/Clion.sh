#!/bin/sh

# open Downloads folder and download clion 
cd ~/Downloads

wget -q --show-progress https://data.services.jetbrains.com/products/download\?code\=CL\&platform\=linux -O clion.tar.gz

# Unzip tar.gz to /opt/ directory
sudo tar -zxvf clion.tar.gz -C /opt/ --transform s/clion-2018.2.3/clion/

# Delete package
sudo rm clion.tar.gz 

# Install
cd /opt/clion/bin/
./clion.sh 
