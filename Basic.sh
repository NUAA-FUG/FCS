#!/bin/sh

sudo dnf update -y

# Add RPM Fusion Repository
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf check-update

# Install basic applications 
sudo dnf install -y vim gcc-c++ gdb curl 

# Install FFmpeg
sudo dnf install -y ffmpeg

# Install NetworkManager plugins
sudo dnf install -y NetworkManager-*

# Some tools to support NTFS and exFAT filesystem
sudo dnf install -y ntfs-3g fuse fuse-libs
sudo dnf install -y fuse-exfat

######  Software ######

# Install Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

# Install Sublime Text 3
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

# Install Zeal
sudo dnf install -y zeal

# Install OBS
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install obs-studio

# Install Calibre
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

# Install uget
sudo dnf install uget

# Install vlc
sudo dnf install -y vlc

# Install MKVToolNix
sudo rpm -Uhv https://mkvtoolnix.download/fedora/bunkus-org-repo-2-3.noarch.rpm
sudo dnf install -y mkvtoolnix-gui

# Install WoeUSB
sudo dnf install -y WoeUSB

# Install Xsensors
sudo dnf install -y xsensors

# Install Google Chrome stable version
sudo sh -c 'echo -e "[google-chrome]\nname=google-chrome\nbaseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64 \nenabled=1\ngpgcheck=1\ngpgkey=https://dl.google.com/linux/linux_signing_key.pub
" > /etc/yum.repos.d/google-chrome.repo'
sudo dnf check-update
sudo dnf install -y google-chrome-stable

# Install Telegram Desktop
sudo dnf install -y telegram-desktop

# Install Mendelay Desktop V 1.17.13
wget -q --show-progress https://github.com/hmaarrfk/mendeley-rpm/releases/download/1.17.13/mendeleydesktop-1.17.13-1.fc27.x86_64.rpm
sudo dnf install -y mendeleydesktop-1.17.13-1.fc27.x86_64.rpm

# Install Typora
git clone https://github.com/RPM-Outpost/typora.git
cd typora
./create-package.sh x64

# Install Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo
sudo dnf check-update
sudo dnf -y install steam

# Install ibus-rime
sudo dnf install -y ibus-rime
ibus restart

# Install Tweak
sudo dnf install -y gnome-tweak-tool

# Install Chrome GNOME Shell
sudo dnf install -y chrome-gnome-shell

# Node.js 8.x LTS
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo dnf -y install nodejs
