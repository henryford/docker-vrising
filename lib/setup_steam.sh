#!/bin/bash
#
#
useradd -m steam
cd /home/steam 

#Accept license agreement    
echo steam steam/question select "I AGREE" | debconf-set-selections
echo steam steam/license note '' | debconf-set-selections
    
#Make sure none lingering versions are about
apt-get purge steam steamcmd

#Install our neccesities
apt-get install -y gdebi-core libgl1-mesa-glx:i386 wget
apt-get install -y steam steamcmd
ln -s /usr/games/steamcmd /usr/bin/steamcmd

apt-get install -y wine xserver-xorg xvfb

#Clean up
rm -rf /var/lib/apt/lists/* 
apt-get clean 
apt-get autoremove -y
