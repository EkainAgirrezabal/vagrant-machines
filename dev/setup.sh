#!/bin/bash

# New user
sudo apt-get install -y whois
sudo useradd -d /home/$1 -m $1 -p `mkpasswd $1`
sudo usermod -aG sudo $1
# Locale ES
echo "setxkbmap es" >> /home/$1/.bashrc

# Gnome & Utilities
sudo apt-get install -y gdm gnome-shell 
#sudo apt-get install -y xorg gnome-core gnome-system-tools gnome-app-install
sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo apt-get install -y gnome-terminal nautilus gedit
#ssudo apt-get install -y openjdk-8-jdk
sudo apt-get install -y docker.io

# Browsers
sudo apt-get install -y firefox

# Provision scripts to user home
sudo mkdir /home/$1/provision/ && sudo cp /vagrant/*.sh /home/$1/provision/
sudo chmod +x /home/$1/provision/*.sh

# Workaround for private network error
# https://bugs.launchpad.net/ubuntu/+source/ubuntu-fan/+bug/1729608
sudo mv /etc/network/fan /etc/network/fan.backup
# Workaround for docker networking issues + landrush
# https://github.com/vagrant-landrush/landrush/issues/293
echo "$(host -t A index.docker.io | grep has.address | head -1 | awk '{print $NF}') index.docker.io" >> /etc/hosts
echo "$(host -t A registry-1.docker.io | grep has.address | head -1 | awk '{print $NF}') registry-1.docker.io" >> /etc/hosts



