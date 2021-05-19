#!/bin/sh

typoraPath="/opt/typora"
cd ~/Downloads

if [ -d $typoraPath ]; then # the typora folder exist
    cd ~/Downloads
    wget -q --show-progress https://typora.io/linux/Typora-linux-x64.tar.gz
    sudo tar -zxvf Typora-linux-x64.tar.gz -C /opt/
    sudo rm -f Typora-linux-x64.tar.gz
    cd /opt/
    sudo rm -rf typora/
    sudo mv Typora-linux-x64/ typora/
else
    git clone https://github.com/RPM-Outpost/typora.git
    cd typora
    ./create-package.sh x64
fi
