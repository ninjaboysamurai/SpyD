#!/bin/bash
clear
echo ""
echo "---------------CAPTURE-HANDSHAKE------------------"
echo "| 1. To Capture WPA2 Handshake 	                 | 
| 2. To Return to Tester Mode		         |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " Mon
if [ "$Mon" -eq "1" ] 
then 
	ifconfig wlan0 down
	airmon-ng start wlan0
	read -p "Scan Networks for (seconds) : " sec
	timeout --foreground $sec airodump-ng mon0
	read -p "Enter ESSID : " ESSID
	read -p "Enter Channel : " ch
	read -p "Enter BSSID : " BSSID
	echo ""
	timeout --foreground $sec airodump-ng -c $ch --bssid $BSSID --ignore-negative-one -w $ESSID.cap mon0
	echo "$ESSID Handshake Captured! "	
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/W_Handshake.sh
	fi
elif [ "$Mon" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$Mon" -eq "3" ]
then
	sh MainScript.sh
elif [ "$Mon" -eq "4" ]
then
	exit
fi
