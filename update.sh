#!/bin/bash

DVS="/usr/local/dvs/"
tmp="/usr/local/dvs/tmp/"
AB="/opt/Analog_Bridge/"
MB="/opt/MMDVM_Bridge/"


sudo wget -O ${tmp}txt.txt https://raw.githubusercontent.com/hl5ky/test/master/txt.txt
sudo cp ${tmp}txt.txt ${AB}
