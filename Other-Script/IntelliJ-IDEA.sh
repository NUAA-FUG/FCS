#!/bin/sh

cd ~/Downloads

echo -n "Which version do you want to install,Ultimate or Community?[U or C (default C)]: ";
read ideav
if [ $ideav = "u" -o $ideav="U" ];
then
    wget -q --show-progress https://download.jetbrains.com/idea/ideaIU-2018.2.tar.gz
    sudo tar -zxvf ideaIU-2018.2.tar.gz -C /opt/ --transform s/idea-IU-182.3684.101/ideaIU/
    sudo rm ideaIU-2018.2.tar.gz
    cd /opt/ideaIU/bin/
    ./idea.sh
else
    wget -q --show-progress https://download.jetbrains.com/idea/ideaIC-2018.2.tar.gz
    sudo tar -zxvf ideaIC-2018.2.tar.gz -C /opt/ --transform s/idea-IU-182.3684.101/ideaIC/
    sudo rm ideaIC-2018.2.tar.gz
    cd /opt/ideaIC/bin/
    ./idea.sh
fi
