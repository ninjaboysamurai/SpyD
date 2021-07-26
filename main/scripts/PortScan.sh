#!/bin/sh
clear
echo ""
echo "---------------------PORT-SCANNER-----------------"
echo "| 1. For Scanning Port of Known IP Address       | 
| 2. For Scanning Port Of a Website    	         |
| 3. To Return to Tester Mode 			 |
| 4. To Return to Main Menu		         |
| 5. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " P_SCAN
if [ "$P_SCAN" -eq "1" ] 
then 
	echo ""	
	read -p "Please enter the IP to Scan :" IP
	read -p "Please enter the port number :" PORT
	echo ""
	nmap -oG - $IP -p $PORT -vv > $IP.txt
	echo ""
	grep -i Host $IP.txt
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/PortScan.sh
	fi
elif [ "$P_SCAN" -eq "2" ]
then
	echo ""
	read -p "Enter Website (www.example.com) : " WEB
	XYZ=$(dig +short $WEB)
	echo "$WEB has an address of $XYZ"	
	read -p "Enter The Port To Scan : " PRT
	nmap -oG - $XYZ -p $PRT -vv > $WEB.txt
	echo ""
	grep -i Host $WEB.txt
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/PortScan.sh
	fi
elif [ "$P_SCAN" -eq "3" ]
then
	sh TesterMode.sh
elif [ "$P_SCAN" -eq "4" ]
then
	sh MainScript.sh
elif [ "$P_SCAN" -eq "5" ]
then
	exit
fi
