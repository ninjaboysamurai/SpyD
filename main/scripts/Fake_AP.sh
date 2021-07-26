#!/bin/bash
clear
echo ""
echo "----------------FAKE-ACCESS-POINT-----------------"
echo "| 1. To Create a Fake Access Point 	         | 
| 2. To Return to Tester Mode		         |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " Fap
if [ "$Fap" -eq "1" ] 
then 
	ifconfig wlan0 down
	airmon-ng start wlan0
	timeout --foreground 20 airodump-ng mon0 
	read -p "Select Channel of Fake access Point : " CHANNEL
	read -p "Please Enter the name of the fake access point : " AP_NAME
	airbase-ng --essid $AP_NAME -c $CHANNEL mon0
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/Fake_AP.sh
	fi
elif [ "$Fap" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$Fap" -eq "3" ]
then
	sh MainScript.sh
elif [ "$Fap" -eq "4" ]
then
	exit
fi
