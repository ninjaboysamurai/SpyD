#!/bin/bash
clear
echo ""
echo "------------------ZONE-TRANSFER-------------------"
echo "| 1. To DNS Zone Transfer of Website             | 
| 2. To Return to Tester Mode		         |
| 3. To Return to Main Menu		         |
| 4. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " ZT
if [ "$ZT" -eq "1" ] 
then 
	read -p "Enter Website (example.com) : " Web
	echo "The Name Servers of $Web : $(host -t ns $Web) "
	read -p "Enter The Name Server : " NS	
	host -l $Web $NS
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh ZoneTransfer.sh
	fi
elif [ "$ZT" -eq "2" ]
then
	sh TesterMode.sh
elif [ "$ZT" -eq "3" ]
then
	sh MainScript.sh
elif [ "$ZT" -eq "4" ]
then
	exit
fi
