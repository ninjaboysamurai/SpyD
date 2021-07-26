#!bin/bash
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
echo "
1. Open A Browser and GoTo https://192.168.1.1/cgi-bin/luci
2. GoTo Network > Wireless
3. Scan Wireless Networks > Select Network > Enter PassPhrase
4. Save And Apply > Enjoy "
airmon-ng stop mon0
ifconfig wlan0 down
ifconfig wlan0 up
iwconfig
read -p "Exit ? (1/0) : " chCE
if [ "$chCE" -eq "1" ]
then
	sh MainScript.sh
else
	sh UserMode.sh
fi



