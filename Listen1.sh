#!/bin/sh

cd ~/Downloads

# Download listen 1
wget -q --show-progress https://github.com/listen1/listen1_desktop/releases/download/v1.5.2/Listen1_1.5.2_linuxx86_64.AppImage

chmod a+x Listen1_1.5.2_linuxx86_64.AppImage

./Listen1_1.5.2_linuxx86_64.AppImage