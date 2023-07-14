#!/bin/bash
clear
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# USERNAME
rm -f /usr/bin/user
username=$(curl https://Etil-arya.github.io/izin | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user
# Order ID
rm -f /usr/bin/ver
user=$(curl https://Etil-arya.github.io/izin | grep $MYIP | awk '{print $3}')
echo "$user" >/usr/bin/ver
# validity
rm -f /usr/bin/e
valid=$(curl https://Etil-arya.github.io/izin | grep $MYIP | awk '{print $4}')
echo "$valid" >/usr/bin/e
# DETAIL ORDER
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)
clear

echo -e "\e[32mloading...\e[0m"
clear
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting

clear
checking_sc
echo -e "\e[32mloading...\e[0m"
clear
export TIME="10"
IP=$(curl -sS ipv4.icanhazip.com)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
domain=$(cat /etc/xray/domain)
clear
echo -e "\033[1;93m====================\033[0m"
echo -e " SSH Ovpn Account           "
echo -e "\033[1;93m====================\033[0m"
read -p " Username : " Login
read -p " Password : " Pass
read -p " Expired (Days): " masaaktif
clear
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
cat > /var/www/html/ssh-$Login.txt <<-END
====================
BY ARYA NBC
Wa.me/6287721815317
====================

Format SSH OVPN Account
====================
Username         : $Login
Password         : $Pass
====================
IP               : $IP
Host             : $domain
Port OpenSSH     : 443, 80, 22
Port Dropbear    : 443, 109
Port Dropbear WS : 443, 109
Port SSH UDP     : 1-65535
Port SSH WS      : 80, 8080, 8081-9999
Port SSH SSL WS  : 443
Port SSL/TLS     : 400-900
Port OVPN WS SSL : 443
Port OVPN SSL    : 443
Port OVPN TCP    : 1194
Port OVPN UDP    : 2200
BadVPN UDP       : 7100, 7200, 7300
====================
Aktif Selama     : $masaaktif Hari
Dibuat Pada      : $tnggl
Berakhir Pada    : $expe
====================
Payload WSS: GET wss://$domain/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf] 
====================
OVPN Download : https://$domain:81/
====================

END

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
echo ""
echo -e "\033[1;93m====================\033[0m"
echo -e " SSH OVPN Account    "
echo -e "\033[1;93m====================\033[0m"
echo -e "Username         : $Login"
echo -e "Password         : $Pass"
echo -e "IP               : $IP"
echo -e "Host             : $domain"
#echo -e "Host Slowdns     : ${NS}"
#echo -e "Pub Key          : ${PUB}"
#echo -e "Location         : $CITY"
echo -e "Port OpenSSH     : 443, 80, 22"
#echo -e "Port DNS         : 443, 53 ,22 "
echo -e "Port SSH UDP     : 1-65535"
echo -e "Port Dropbear    : 443, 109"
echo -e "Port SSH WS      : 80, 8080, 8081-9999"
echo -e "Port SSH SSL WS  : 443"
echo -e "Port SSL/TLS     : 400-900"
echo -e "Port OVPN WS SSL : 443"
echo -e "Port OVPN SSL    : 443"
echo -e "Port OVPN TCP    : 443, 1194"
echo -e "Port OVPN UDP    : 2200"
echo -e "BadVPN UDP       : 7100, 7200, 7300"
echo -e "\033[1;93m====================\033[0m"
echo -e "Payload WSS      : GET wss://$domain/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "\033[1;93m====================\033[0m"
echo -e "OVPN Download    : https://$domain:81/"
echo -e "\033[1;93m====================\033[0m"
echo -e "Save Link Account: https://$domain:81/ssh-$Login.txt"
echo -e "\033[1;93m====================\033[0m"
echo -e "Aktif Selama     : $masaaktif Hari"
echo -e "Dibuat Pada      : $tnggl"
echo -e "Berakhir Pada    : $expe"
echo -e "\033[1;93m====================\033[0m"
echo -e ""
echo -e " Scrip By Arya Blitar"
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi