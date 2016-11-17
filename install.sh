#!/bin/bash

##########
# Config #
##########
add_git_folder="/opt/gits"
version_notepadqq="0.53.0-0~yakkety1"

#####################
# Software installs #
#####################
echo -e "$(tput setaf 1)"
echo ==============================================
echo === Installing NotepadQQ $version_notepadqq ===
echo ==============================================
echo -e "${NC}"
cd /tmp
wget "https://launchpad.net/~notepadqq-team/+archive/ubuntu/notepadqq/+files/notepadqq-common_"$version$
wget "https://launchpad.net/~notepadqq-team/+archive/ubuntu/notepadqq/+files/notepadqq-gtk_"$version_no$
sudo dpkg -i "notepadqq-common_"$version_notepadqq"_all.deb"; sudo apt-get install -f
sudo dpkg -i "notepadqq-gtk_"$version_notepadqq"_all.deb"; sudo apt-get install -f
rm "/tmp/notepadqq-common_"$version_notepadqq"_all.deb"
rm "/tmp/notepadqq-gtk_"$version_notepadqq"_all.deb"
echo -e "$(tput setaf 3)"
echo ===================================================
echo === Done installing NotepadQQ $version_notepadqq ===
echo ===================================================
echo -e "${NC}"

echo -e "$(tput setaf 1)"
echo =========================
echo === Installing OpenVAS ===
echo =========================
echo -e "${NC}"

apt-get install openvas -y
openvas-setup


####################
# Pull from Github #
####################

cd $add_git_folder

#git pull
