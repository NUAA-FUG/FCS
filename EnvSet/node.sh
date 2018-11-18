#!/bin/sh

# Variables
r='\e[31m' # red
y='\e[33m' # yellow
bu='\e[34m' # blue
g='\e[32m'
endc='\e[0m'
# change root
echo "${g}Change to ROOT user${endc}"
su
# add nodejs repo
curl -sL https://rpm.nodesource.com/setup_10.x | bash -

# exit root mode
echo "${g}Quit ROOT mode${endc}"
exit

# install
sudo dnf install nodejs -y

# install yarn
curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo dnf install yarn -y

# check node npm yarn version
echo -e " ${r}node version:$(node --version)${endc} \n ${y}npm version:$(npm --version)${endc} \n ${bu}yarn version:$(yarn --version)${endc}"
