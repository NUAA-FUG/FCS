#!/bin/sh

echo "Are you live in China?(y/n, Default:n): "
read choice
if [ $choice = "y" -o $choice = "Y"];
then 
    wget -q --show-progress https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
    sudo dnf install -y nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
    sudo proxychains4 dropbox start -i
    dropbox start
    dropbox proxy manual socks5 127.0.0.1 1080
else
    wget -q --show-progress https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
    sudo dnf install -y nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm
    sudo dropbox start -i
fi