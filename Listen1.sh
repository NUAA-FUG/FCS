#!/bin/sh

cd /opt/

# Download listen 1
sudo wget -q --show-progress https://github.com/listen1/listen1_desktop/releases/download/v1.5.2/Listen1_1.5.2_linuxx86_64.AppImage

sudo chmod a+x Listen1_1.5.2_linuxx86_64.AppImage

sudo mv Listen1_1.5.2_linuxx86_64.AppImage listen1.AppImage

#./Listen1_1.5.2_linuxx86_64.AppImage
./listen1.AppImage 