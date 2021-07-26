#!/bin/bash
clear
echo ""
echo "-------------------NAMESERVER-------------------"
echo "| 1. To Find Nameserver of Website (Short)     |
| 2. To Find Nameserver of Website (Detail)    |
| 3. To Find Nameserver of Website + Priority  |
| 4. To Return to Tester Mode		       |	
| 5. To Return to Main Menu	               |
| 6. To Exit		         	       |"                                        
echo "------------------------------------------------"
echo ""
read -p "Your Choice : " NAM_S
if [ "$NAM_S" -eq "1" ] 
then 
	echo ""	
	read -p "Enter Website (www.example.com) : " NAM_S
	dig -t ns $NAME_S +short
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/NameServer.sh
	fi
elif [ "$NAM_S" -eq "2" ]
then
	echo ""	
	read -p "Enter Website (www.example.com) : " NAM_S
	dig -t ns $NAME_S 
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/NameServer.sh
	fi
elif [ "$NAM_S" -eq "3" ]
then
	echo ""	
	read -p "Enter Website (www.example.com) : " NAM_S
	host -t mx $NAM_S
	echo ""
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh scripts/NameServer.sh
	fi
elif [ "$NAM_S" -eq "4" ]
then
	sh TesterMode.sh
elif [ "$NAM_S" -eq "5" ]
then
	sh MainScript.sh
elif [ "$NAM_S" -eq "6" ]
then
	exit
fi
