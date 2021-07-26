#!/bin/bash
clear
# NOT WORKING - DIG ERROR RELOCATING
echo ""
echo "--------------------Mail-Server-------------------"
echo "| 1. To Find Mail Server Details 		 |
| 2. To Return to Tester Mode 	         	 |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " F_SER
if [ "$F_SER" -eq "1" ] 
then 
	read -p "Enter Website Name (www.example.com) : " W_SITE
	dig -t mx $W_SITE +short
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/MailServer.sh
	fi
elif [ "$F_SER" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$F_SER" -eq "3" ]
then
	sh MainScript.sh
elif [ "$F_SER" -eq "4" ]
then
	exit
fi
