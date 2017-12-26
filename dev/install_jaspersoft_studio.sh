#!/bin/bash

# Jaspersoft Studio 6.5.0
sudo mkdir /tmp/jaspersoft && cd "$_"
sudo wget https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-6.5.0/TIB_js-studiocomm_6.5.0.final_linux_amd64.deb
sudo dpkg -i TIB_js-studiocomm_6.5.0.final_linux_amd64.deb

# Jaspersoft Studio 6.4.3
#sudo mkdir /usr/local/jaspersoft && cd "$_"
#sudo wget -q -O jaspersoftstudio.tgz https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-6.4.3/TIB_js-studiocomm_6.4.3.final_linux_x86_64.tgz
#sudo tar -xvzf jaspersoftstudio.tgz
#sudo mv TIB_js-studiocomm_6.4.3.final JaspersoftStudio
#cd /usr/share/applications/ && sudo touch jaspersoftstudio.desktop && sudo chmod a+x jaspersoftstudio.desktop
#echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nTerminal=false\nIcon=/usr/local/jaspersoft/JaspersoftStudio/icon.xpm\nExec=sh /usr/local/jaspersoft/JaspersoftStudio/runjss.sh\nName=JaspersoftStudio" || sudo tee jaspersoftstudio.desktop

# Jaspersoft Studio 6.4.0
#sudo mkdir /tmp/jaspersoft && cd "$_"
#sudo wget -O jaspersoftstudio.tgz https://downloads.sourceforge.net/project/jasperstudio/JaspersoftStudio-6.4.0/TIB_js-studiocomm_6.4.0_linux_amd64.deb
#sudo dpkg -i TIB_js-studiocomm_6.4.0_linux_amd64.deb




