#!/bin/sh

cd ~/Downloads

echo -n "Which version do you want to install,Professional or Community?[P or C (default C)]: ";
read pyv
if [ $pyv = "p" -o $pyv = "P" ];
then
    wget -q --show-progress https://download.jetbrains.com/python/pycharm-professional-2018.3.tar.gz
    sudo tar -zxvf pycharm-professional-2018.3.tar.gz -C /opt/ --transform s/pycharm-2018.3/pycharm/
    sudo rm pycharm-professional-2018.3.tar.gz 
    cd /opt/pycharm/bin/
    ./pycharm.sh
else
    wget -q --show-progress https://download.jetbrains.com/python/pycharm-community-2018.3.tar.gz
    sudo tar -zxvf pycharm-community-2018.3.tar.gz -C /opt/ --transform s/pycharm-community-2018.3/pycharm/
    sudo rm pycharm-community-2018.3.tar.gz 
    cd /opt/pycharm/bin/
    ./pycharm.sh
fi
