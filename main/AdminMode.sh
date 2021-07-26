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
echo "Please select the script you want to Edit :
1: Change MAC Address
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
1)nano scripts/MacC.sh
;;
2)nano scripts/IPV6add.sh
;;
3)nano scripts/OS_Detect.sh
;;
4)nano scripts/Monitor.sh
;;
5)nano scripts/PortScan.sh
;;
6)nano scripts/Fake_AP.sh
;;
7)nano scripts/Packet_Inject.sh
;;
8)nano scripts/NameServer.sh
;;
9)nano scripts/ZoneTransfer.sh
;;
10)nano scripts/TracePacket.sh
;;
11)nano scripts/W_Handshake.sh
;;
12)nano scripts/Luci_Int.sh
;;
13)nano scripts/Cap_Portal.sh
;;
14)nano scripts/Git.sh
;;
15)nano ./MainScript.sh
;;
16)exit
;;
*) echo "Please enter the correct option"
;;
esac
#2,3,5,8,10,12,13,14
