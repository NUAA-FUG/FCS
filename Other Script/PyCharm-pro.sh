#!/bin/sh

cd ~/Downloads

wget -q --show-progress https://download.jetbrains.com/python/pycharm-professional-2017.3.4.tar.gz

# Unzip tar.gz to /opt/ directory
sudo tar -zxvf pycharm-professional-2017.3.4.tar.gz -C /opt/ --transform s/pycharm-2017.3.4/pycharm/

cd /opt/pycharm/bin/

./pycharm.sh