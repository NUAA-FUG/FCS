#!/bin/sh

echo -n "Do you live in China?(y/n, Default:n): ";
read choice
if [ $choice = "y" -o $choice = "Y" ];
then
    cd ~/Downloads
    sudo dnf install python-gpgme -y
    proxychains4 wget -q --show-progress https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm -O dropbox.rpm
    sudo dnf install -y dropbox.rpm
    proxychains4 dropbox start -i
    dropbox start
    dropbox proxy manual socks5 127.0.0.1 1080
else
    cd ~/Downloads
    sudo dnf install python-gpgme -y
    wget -q --show-progress https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.10.28-1.fedora.x86_64.rpm -O dropbox.rpm
    sudo dnf install -y dropbox.rpm
    dropbox start -i
	dropbox start
fi
