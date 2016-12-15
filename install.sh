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

echo -e "$(tput setaf 1)"
echo ==============================
echo === Done installing OpenVAS ===
echo ==============================
echo -e "${NC}"


###################
# apt-get install #
###################

apt-get install websploit -y
apt-get install dnsmasq

####################
# Pull from Github #
####################

cd $add_git_folder

git clone https://github.com/schubergphilis/Seccubus_v2
git clone https://github.com/Subterfuge-Framework/Subterfuge
cd Subterfuge
python setup.py
git clone https://github.com/samratashok/nishang
git clone https://github.com/adaptivethreat/Empire
git clone https://github.com/delta24/updated_cms_explorer
git clone https://github.com/gfoss/attacking-drupal
git clone https://github.com/sullo/nikto
git clone https://github.com/SAMLRaider/SAMLRaider.git
git clone https://github.com/FlorianHeigl/cms-explorer
git clone https://github.com/commixproject/commix.git commix
git clone https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
git clone https://github.com/v3n0m-Scanner/V3n0M-Scanner
git clone https://github.com/joaomatosf/jexboss

# Ease-Creds:
apt-get install ferret -y
apt-get install hostapd -y
apt-get install ipcalc -y
git clone https://github.com/brav0hax/easy-creds
####################
# Direct downloads #
####################

wget http://www.securitysift.com/download/shellshock.py

#git pull
