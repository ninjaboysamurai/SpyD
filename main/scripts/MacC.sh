#!/bin/sh
clear
echo ""
echo "---------------------MAC-CHANGER------------------"
echo "| 1. For Changing MAC Address as per your vendor | 
| 2. For Hanging MAC Address randomely 	         |
| 3. To Return to Tester Mode                    |
| 4. To Return to Main Menu		         |
| 5. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " MAC_C
if [ "$MAC_C" -eq "1" ] 
then 
	ifconfig wlan0 down
	macchanger -e wlan0
	ifconfig wlan0 up
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh MainScript.sh
	else
		sh scripts/MacC.sh
	fi
elif [ "$MAC_C" -eq "2" ]
then
	ifconfig wlan0 down
	macchanger -A wlan0
	ifconfig wlan0 up
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh MainScript.sh
	else
		sh scripts/MacC.sh
	fi
elif [ "$MAC_C" -eq "3" ]
then
	sh TesterMode.sh
elif [ "$MAC_C" -eq "4" ]
then
	sh MainScript.sh
elif [ "$MAC_C" -eq "5" ]
then
	exit
fi
exit