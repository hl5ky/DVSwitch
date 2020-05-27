#!/bin/bash

DVS="/usr/local/dvs/"
tmp="/usr/local/dvs/tmp/"
AB="/opt/Analog_Bridge/"
MB="/opt/MMDVM_Bridge/"

source ${DVS}lan/korean.txt
source ${DVS}var.txt

new_date=200522


# add line
#echo "abc" >> test.txt
#echo "abc" | sudo tee -a test.txt



#sudo wget -O ${tmp}txt.txt https://raw.githubusercontent.com/hl5ky/test/master/txt.txt
#sudo cp ${tmp}txt.txt ${AB}



function update() {


echo "업데이트 실행"

sudo cp ${DVS}test.txt tty.txt > /dev/null 2>&1
sudo rm ${DVS}update.sh

}

#----- MAIN ------------------------------------------------------------------------------

if [ ${date_update_scripts} -lt ${new_date} ];
then
        if (whiptail --title " 업데이트 " --yesno "\
\n
                    새로운 업데이트가 있습니다.

                      업데이트 하시겠습니까?

" 12 70); then
        sudo sed -i -e "/^date_update_scripts=/ c date_update_scripts=${new_date}" "${DVS}lan/korean.txt"
        update
        else clear; ${DVS}update_upgrade.sh; exit 0
        fi
else
whiptail --msgbox "\
\n
                    새로운 업데이트가 없습니다.

" 10 70 1

sudo rm ${DVS}update.sh

fi

#clear; ${DVS}update_upgrade.sh; exit 0

exit 0
