#!/bin/sh

sudo dnf install zlib.i686 ncurses-libs.i686 bzip2-libs.i686 -y

# Open Downloads directory
cd ~/Downloads
wget -q --show-progress https://dl.google.com/dl/android/studio/ide-zips/3.0.1.0/android-studio-ide-171.4443003-linux.zip

# Unzip the package to /opt/ directory
sudo unzip android-studio-ide-171.4443003-linux.zip -d /opt/

sudo rm android-studio-ide-171.4443003-linux.zip 

cd /opt/android-studio/bin/
./studio.sh 