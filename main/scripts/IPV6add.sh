#!/bin/sh
clear
echo ""
echo "------------------IPV6-ADDRESS--------------------"
echo "| 1. Find IPV6 Address of website		 | 
| 2. To Return to Tester Mode		         |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " IPv_6
if [ "$IPv_6" -eq "1" ] 
then 
	read -p "Enter Website (www.example.com) : " IPV6
	nslookup -query=AAAA $IPV6 
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/IPV6add.sh
	fi
elif [ "$IPv_6" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$IPv_6" -eq "3" ]
then
	sh MainScript.sh
elif [ "$IPv_6" -eq "4" ]
then
	exit
fi
