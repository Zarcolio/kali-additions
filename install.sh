#!/bin/bash
add_git_folder="/opt/gits"
version_notepadqq="0.53.0-0~yakkety1"
echo ==============================================
echo === Installing NotepadQQ $version_notepadqq ===
echo ==============================================
cd /tmp
wget "https://launchpad.net/~notepadqq-team/+archive/ubuntu/notepadqq/+files/notepadqq-common_"$version_notepadqq"_all.deb"
wget "https://launchpad.net/~notepadqq-team/+archive/ubuntu/notepadqq/+files/notepadqq-gtk_"$version_notepadqq"_all.deb"
sudo dpkg -i "notepadqq-common_"$version_notepadqq"_all.deb"; sudo apt-get install -f
sudo dpkg -i "notepadqq-gtk_"$version_notepadqq"_all.deb"; sudo apt-get install -f
rm "/tmp/notepadqq-common_"$version_notepadqq"_all.deb"
rm "/tmp/notepadqq-gtk_"$version_notepadqq"_all.deb"
echo ===================================================
echo === Done installing NotepadQQ $version_notepadqq ===
echo ===================================================


cd $add_git_folder

#git pull
