#!/bin/sh

sudo dnf update -y

# Add RPM Fusion Repository
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf check-update

# Install basic applications 
sudo dnf install -y vim git gcc-c++ gdb curl 

# Install NetworkManager plugins
sudo dnf install NetworkManager-*

# Some tools to support NTFS and exFAT filessysystem
sudo dnf install -y ntfs-3g fuse fuse-libs
sudo dnf install -y fuse-exfat

