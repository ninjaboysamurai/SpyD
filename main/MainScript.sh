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
echo "Please select the SpyD Operating Mode
1: User Mode
2: Tester Mode
3: Admin Mode
4: Restart Device
5: Exit"
echo ""
read -p "Enter your Choice : " mode
case $mode in
1)sh ./UserMode.sh
;;
2)sh ./TesterMode.sh
;;
3)sh ./AdminMode.sh
;;
4)reboot
;;
5)exit
;;
*)echo "Please enter the correct option"
;;
esac
