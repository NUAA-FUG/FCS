#!/bin/sh

typoraPath="/opt/typora"
cd ~/Downloads

if [ ! -d "typoraPath" ]; then # the typora folder not exist
    git clone https://github.com/RPM-Outpost/typora.git
    cd typora
    ./create-package.sh x64
else
    cd ~/Downloads
    wget -q --show-progress https://typora.io/linux/Typora-linux-x64.tar.gz
    sudo tar -zxvf Typora-linux-x64.tar.gz -C /opt/
    sudo rm -f Typora-linux-x64.tar.gz
    cd /opt/
    sudo rm -rf -v typora/
    sudo mv Typora-linux-x64/ typora/
fi