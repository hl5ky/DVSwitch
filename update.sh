#!/bin/bash

DVS="/usr/local/dvs/"
tmp="/usr/local/dvs/tmp/"
AB="/opt/Analog_Bridge/"
MB="/opt/MMDVM_Bridge/"

source ${DVS}lan/korean.txt
source ${DVS}var.txt

# add line
#echo "abc" >> test.txt
#echo "abc" | sudo tee -a test.txt



#sudo wget -O ${tmp}txt.txt https://raw.githubusercontent.com/hl5ky/test/master/txt.txt
#sudo cp ${tmp}txt.txt ${AB}

# 200523 New update of macro
if [ ${date_update_scripts} -lt 200523 ]; then

sudo sed -i -e "/^date_update_scripts=/ c date_update_scripts=200523" "${DVS}lan/korean.txt"
fi


