#!/bin/sh

# Open user directory
cd ~/Downloads


# Download 
wget -q --show-progress https://typora.io/linux/Typora-linux-x64.tar.gz

# Unzip tar package to /opt/ directory
sudo tar -zxvf Typora-linux-x64.tar.gz -C /opt/

# Open /opt/ diretcory
cd /opt/

# delete the formal typora folder 
sudo rm -rf -v typora/

sudo mv Typora-linux-x64/ typora/

# Delete the formal tar.gz of typora

cd ~/Downloads

rm -i Typora-linux-x64.tar.gz

