#!/bin/bash
clear
echo ""
echo "------------------MONITOR-WLANS-------------------"
echo "| 1. To Monitor WLANs 			         | 
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
	timeout --foreground $sec airodump-ng mon1
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/Monitor.sh
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
