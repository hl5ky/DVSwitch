#!/bin/bash

DVS="/usr/local/dvs/"
tmp="/usr/local/dvs/tmp/"
AB="/opt/Analog_Bridge/"
MB="/opt/MMDVM_Bridge/"

source ${DVS}lan/korean.txt
source ${DVS}var.txt

sudo rm update_chk.sh

#다운로드테스트 sudo wget -O /usr/local/dvs/update.sh https://raw.githubusercontent.com/hl5ky/DVSwitch/master/update.sh

# add line
#echo "abc" >> test.txt
#echo "abc" | sudo tee -a test.txt



#sudo wget -O ${tmp}txt.txt https://raw.githubusercontent.com/hl5ky/test/master/txt.txt
#sudo cp ${tmp}txt.txt ${AB}


#---실행시작--------------------------------------------------------------------


echo "업데이트 실행"

sudo cp ${DVS}test.txt tty.txt > /dev/null 2>&1
#---실행끝----------------------------------------------------------------------
whiptail --msgbox "\
\n
                     업데이트가 완료되었습니다.

" 10 70 1
sudo rm ${DVS}update.sh
