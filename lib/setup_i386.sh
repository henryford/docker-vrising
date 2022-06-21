#!/bin/bash
#
#
apt-get update -y

apt-get install -y apt-utils

apt-get upgrade -y

#Install base packages
apt-get install -y software-properties-common tzdata

#Allow us to install i386 libs
add-apt-repository multiverse
dpkg --add-architecture i386
apt-get update -y
apt-get upgrade -y
