#!/bin/bash

DVS="/usr/local/dvs/"
tmp="/usr/local/dvs/tmp/"

source ${DVS}lan/korean.txt
source ${DVS}var.txt

new_date=200521

if [ ${date_update_scripts} -lt ${new_date} ];
then
        if (whiptail --title " 업데이트 " --yesno "\
\n
                    새로운 업데이트가 있습니다.
                      업데이트 하시겠습니까?
" 12 70); then
        sudo sed -i -e "/^date_update_scripts=/ c date_update_scripts=${new_date}" "${DVS}lan/korean.txt"
        sudo wget -O ${DVS}update.sh https://raw.githubusercontent.com/hl5ky/DVSwitch/master/update.sh > /dev/null 2>&1
        sudo chmod +x ${DVS}update.sh > /dev/null 2>&1
        sudo ${DVS}update.sh
        else clear; ${DVS}tools_menu.sh; exit 0
        fi
else
clear
whiptail --msgbox "\
\n
                   새로운 업데이트가 없습니다.
" 10 70 1
clear
sudo rm ${DVS}update_chk.sh
fi


