#!/bin/sh

# This script is provided for Chinese users

# Config DNS
sudo sed -i '$i nameserver 8.8.8.8' /etc/resolv.conf
sudo sed -i '$i nameserver 9.9.9.9' /etc/resolv.conf
sudo systemctl restart NetworkManager
sleep 60

# Add FZUG Repository
sudo dnf config-manager --add-repo=https://repo.fdzh.org/FZUG/FZUG.repo
sudo dnf check-update

# Install shadowsocks
sudo pip install git+https://github.com/shadowsocks/shadowsocks.git@master

## Generate config file for shadowsocks
echo -n "Do you need a template shadowsocks config file?(y/n, Default:y): ";
read isConfigFile
if [ $isConfigFile = "n" -o $isConfigFile = "N" ];
then
    echo "No need for a config file."
else
    mkdir ~/shadowsocks
    echo "{
    \"server\":\"your_server_ip\",
    \"server_port\":\"your_server_port\",
    \"local_address\":\"127.0.0.1\",
    \"local_port\":\"your_local_port\",
    \"password\":\"your_password\",
    \"timeout\":500,
    \"method\":\"your_encrypt_method\",
    \"fast_open\": true,
    \"workers\": 1
    }" > ~/shadowsocks/config.json
fi

## Install shadowsocks-qt5
sudo dnf copr enable librehat/shadowsocks
sudo dnf update
sudo dnf install shadowsocks-qt5

## Install libsodium
sudo dnf install -y libsodium

# Install proxychains
sudo dnf install -y proxychains-ng

## Modify config file for proxychains
sudo sed -i '$d' /etc/proxychains.conf
sudo sed -i '$d' /etc/proxychains.conf
sudo sed -i '$i socks5 127.0.0.1 1080' /etc/proxychains.conf


# Install genpac
sudo pip install genpac
sudo genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:1080" -o /etc/pac.txt

# Install Netease Cloud Music (CLI version)
sudo dnf install -y musicbox

# Install Netease Cloud Music (GUI version)
sudo dnf copr enable yelanxin/netease-cloud-music -y
sudo dnf install -y netease-cloud-music

