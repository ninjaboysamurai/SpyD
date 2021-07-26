#!/bin/bash
clear
echo "
-------------------------------------------------                              
|          #####               ######           |
|         #     # #####  #   # #     #          |
|         #       #    #  # #  #     #          |
|   #####  #####  #    #   #   #     # #####    |
|               # #####    #   #     #          |
|         #     # #        #   #     #          |
|          #####  #        #   ######           |
-------------------------------------------------"
echo ""
echo "Please select a service from below : 
1: Change Mac address
2: Find Website Ipv6 Address
3: OS Detection Of A Website
4: Monitor WLAN's
5: Open Port Detection
6: Create a fake access point
7: Send Deauthentication Packets (Packet Injection)
8: Find Website Name Server
9: DNS Zone Transfer
10: Packet tracing
11: WiFi Handshake Capture
12: Open LuCI Web Interface
13: Captive portal attack
14: GitHub Sources 
15: Return to Main Menu
16: Exit"
echo ""
read -p "Enter your Choice : " service
case $service in
1)sh scripts/MacC.sh
;;
2)sh scripts/IPV6add.sh
;;
3)sh scripts/OS_Detect.sh
;;
4)sh scripts/Monitor.sh
;;
5)sh scripts/PortScan.sh
;;
6)sh scripts/Fake_AP.sh
;;
7)sh scripts/Packet_Inject.sh
;;
8)sh scripts/NameServer.sh
;;
9)sh scripts/ZoneTransfer.sh
;;
10)sh scripts/TracePacket.sh
;;
11)sh scripts/W_Handshake.sh
;;
12)sh scripts/Luci_Int.sh
;;
13)sh scripts/Cap_Portal.sh
;;
14)sh scripts/Git.sh
;;
15)sh ./MainScript.sh
;;
16)exit
;;
*) echo "Please enter the correct option"
;;
esac
#2,3,5,8,10,12,13,14
