#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/python/pycharm-professional-2018.1.2.tar.gz

# Unzip tar.gz to /opt/ directory
sudo tar -zxvf pycharm-professional-2018.1.2.tar.gz -C /opt/ --transform s/pycharm-2018.1.2/pycharm/

# Delete the packages
sudo rm pycharm-professional-2018.1.2.tar.gz 

cd /opt/pycharm/bin/

./pycharm.sh