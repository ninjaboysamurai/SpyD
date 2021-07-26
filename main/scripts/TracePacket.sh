#!/bin/bash
clear
echo ""
echo "------------------PACKET-TRACER-------------------"
echo "| 1. To Trace Packets 		                 |
| 2. To Trace Packets To Dump.cap                | 
| 3. To Return to Tester Mode		         |
| 4. To Return to Main Menu		         |
| 5. To Exit				         |"                                        
echo "--------------------------------------------------"
echo ""
read -p "Your Choice : " TPAC
if [ "$TPAC" -eq "1" ] 
then 
	ifconfig
	read -p "Select the Interface To Trace : " INF
	read -p "Time to Trace (in s) : " time 
	timeout $time tcpdump -n -i $INF
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh TracePacket.sh
	fi
elif [ "$TPAC" -eq "2" ]
then
	ifconfig
	read -p "Select the Interface To Trace : " INF
	read -p "Time to Trace (in s) : " time 
	timeout $time tcpdump -n -i $INF -w TracePacketOP/Dump.cap
	read -p "Exit ? (1/0) : " chCE
	if [ "$chCE" -eq "1" ]
	then
		sh TesterMode.sh
	else
		sh TracePacket.sh
	fi
elif [ "$TPAC" -eq "3" ]
then
	sh TesterMode.sh
elif [ "$TPAC" -eq "4" ]
then
	sh MainScript.sh
elif [ "$TPAC" -eq "5" ]
then
	exit
fi
