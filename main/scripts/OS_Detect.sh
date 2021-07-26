#!/bin/sh
clear
echo ""
echo "------------------OS-DETECTION--------------------"
echo "| 1. Find OS of a website Politely		 | 
| 2. Find OS of a website Secretely		 |
| 3. Find OS of a website Aggressively           |
| 4. To Return to Tester Mode		         |
| 5. To Return to Main Menu		         |
| 6. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " OS_D
if [ "$OS_D" -eq "1" ] 
then 
	read -p "Enter Website (www.example.com) : " OSD
	nmap -O $OSD
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/OS_Detect.sh
	fi
elif [ "$OS_D" -eq "2" ]
then
	read -p "Enter Website (www.example.com) : " OSD
	nmap -O $OSD -Pn
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/OS_Detect.sh
	fi
elif [ "$OS_D" -eq "3" ]
then
	read -p "Enter Website (www.example.com) : " OSD
	nmap -A $OSD 
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/OS_Detect.sh
	fi
elif [ "$OS_D" -eq "4" ]
then
	sh TesterMode.sh
elif [ "$OS_D" -eq "5" ]
then
	sh MainScript.sh
elif [ "$OS_D" -eq "6" ]
then
	exit
fi
