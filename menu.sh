#!/bin/bash
MYIP=$(curl -sS ipv4.icanhazip.com)
cd /usr/bin
clear
clear
# Color Validation
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

MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://Etil-arya.github.io/izin | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
exit 0
fi 


# VPS Information
#Domain
domain=$(cat /etc/v2ray/domain)
#Status certificate
#modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
#modifyTime1=$(date +%s -d "${modifyTime}")
#currentTime=$(date +%s)
#stampDiff=$(expr ${currentTime} - ${modifyTime1})
#days=$(expr ${stampDiff} / 86400)
#remainingDays=$(expr 90 - ${days})
#tlsStatus=${remainingDays}
#if [[ ${remainingDays} -le 0 ]]; then
#	tlsStatus="expired"
#fi
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# Download
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )

declare -A nama_hari
nama_hari[Monday]="Senin"
nama_hari[Tuesday]="Selasa"
nama_hari[Wednesday]="Rabu"
nama_hari[Thursday]="Kamis"
nama_hari[Friday]="Jumat"
nama_hari[Saturday]="Sabtu"
nama_hari[Sunday]="Minggu"
hari_ini=`date +%A`


declare -A nama_bulan
nama_bulan[Jan]="Januari"
nama_bulan[Feb]="Februari"
nama_bulan[Mar]="Maret"
nama_bulan[Apr]="April"
nama_bulan[May]="Mei"
nama_bulan[Jun]="Juni"
nama_bulan[Jul]="Juli"
nama_bulan[Aug]="Agustus"
nama_bulan[Sep]="September"
nama_bulan[Oct]="Oktober"
nama_bulan[Nov]="November"
nama_bulan[Dec]="Desember"
bulan_ini=`date +%b`

hari=${nama_hari[$hari_ini]}
jam=$(TZ='Asia/Jakarta' date +%R)
tnggl=$(date +"%d")
bln=${nama_bulan[$bulan_ini]}
thn=$(date +"%Y")
clear 
clear
Domen="$(cat /etc/xray/domain)"
echo ""
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}" | lolcat
echo -e "                     • SERVER INFO •                 " | lolcat
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}" | lolcat
echo -e "${cyan}>${NC}\e[34m CPU Model              \e[0m: $cname"
echo -e "${cyan}>${NC}\e[34m CPU Frequency          \e[0m: $freq MHz"
echo -e "${cyan}>${NC}\e[34m Number Of Cores        \e[0m:  $cores"
echo -e "${cyan}>${NC}\e[34m CPU Usage              \e[0m:  $cpu_usage"
echo -e "${cyan}>${NC}\e[34m Operating System       \e[0m:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`	
echo -e "${cyan}>${NC}\e[34m Kernel                 \e[0m:  `uname -r`"
echo -e "${cyan}>${NC}\e[34m Total Amount Of RAM    \e[0m:  $tram MB"
echo -e "${cyan}>${NC}\e[34m Used RAM               \e[0m:  $uram MB"
echo -e "${cyan}>${NC}\e[34m Free RAM               \e[0m:  $fram MB"
echo -e "${cyan}>${NC}\e[34m System Uptime          \e[0m:  $uptime "
echo -e "${cyan}>${NC}\e[34m ISP Name               \e[0m:  $ISP"
echo -e "${cyan}>${NC}\e[34m Domain                 \e[0m:  $Domen"
echo -e "${cyan}>${NC}\e[34m IP Vps                 \e[0m:  $IPVPS"	
echo -e "${cyan}>${NC}\e[34m City                   \e[0m:  $CITY"
echo -e "${cyan}>${NC}\e[34m TimeZone               \e[0m:  $WKT"
echo -e "${cyan}>${NC}\e[34m Hari                   \e[0m:  $$hari)"
echo -e "${cyan}>${NC}\e[34m Jam                    \e[0m:  $jam WIB ${NC}"
echo -e "${cyan}>${NC}\e[34m Tanggal                \e[0m:  $DATE"
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}" | lolcat
echo -e "\e[34m Traffic\e[0m        \e[33mToday       Yesterday      Month   "
echo -e "\e[34m Download\e[0m       $dtoday   $dyest   $dmon   \e[0m"
echo -e "\e[34m Upload\e[0m         $utoday   $uyest   $umon   \e[0m"
echo -e "\e[34m Total\e[0m  \033[0;36m        $ttoday   $tyest   $tmon  \e[0m "
echo -e "${GREEN}══════════════════════════════════════════════════════════${NC}" | lolcat
echo -e ""
 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  "${GREEN}  ║                   • INFO MENU •                 ${GREEN}║" | lolcat
 echo -e  "${GREEN}  ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  " ${GREEN} ║\e[0m01. CREAT SSH & OpenVPN  $bl    "
 echo -e  " ${GREEN} ║\e[0m02. CREAT L2TP   $bl   "
 echo -e  " ${GREEN} ║\e[0m03. CREAT PPTP $gl   "
 echo -e  " ${GREEN} ║\e[0m04. CREAT WIREGUARD     $mg    "
 echo -e  " ${GREEN} ║\e[0m05. CREAT XRAY VMESS $mg   "
 echo -e  " ${GREEN} ║\e[0m06. CREAT XRAY VLESS   $bl   "
 echo -e  " ${GREEN} ║\e[0m07. CREAT TROJAN GFW  $bl   "
 echo -e  " ${GREEN} ║\e[0m08. CREAT TROJAN GO  $bl    "
 echo -e  " ${GREEN} ║\e[0m09. CEK RUNNING  $gl    "
 echo -e  " ${GREEN} ║\e[0m10. Add Or Change Subdomain Host For VPS $bl    "
 echo -e  " ${GREEN} ║\e[0m11. Change Port Of Some Service  $bl   "
 echo -e  " ${GREEN} ║\e[0m12. Auto Backup Data VPS$gl   "
 echo -e  " ${GREEN} ║\e[0m13. Backup Data VPS $gl  "
 echo -e  " ${GREEN} ║\e[0m14. Restore Data VPS $gl  "
 echo -e  " ${GREEN} ║\e[0m15. Webmin Menu $gl  "
 echo -e  " ${GREEN} ║\e[0m16. Limit Bandwith Speed Server  $mg  "
 echo -e  " ${GREEN} ║\e[0m17. Check Usage of VPS Ram $mg   "
 echo -e  " ${GREEN} ║\e[0m18. Reboot VPS $bl   "
 echo -e  " ${GREEN} ║\e[0m19. Speedtest VPS  $bl   "
 echo -e  " ${GREEN} ║\e[0m20. Info System All Port $bl    "
 echo -e  " ${GREEN} ║\e[0m21. Info Auto Script $gl   "
 echo -e  " ${GREEN} ║\e[0m22. Exit  $gl "
 echo -e  " ${GREEN} ╠═════════════════════════════════════════════════╣" | lolcat
 echo -e  " ${GREEN} ║${cyan}  SCRIPT BY ARYA BLITAR                          ${GREEN}║" | lolcat
 echo -e  " ${GREEN} ╚═════════════════════════════════════════════════╝\e[0m" | lolcat
echo -e  ""
read -p " Select From Options [1-22 or x] : " menu
echo -e   ""
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
wgmenu
;;
5)
clear
vmessmenu
;;
6)
clear
vlessmenu
;;
7)
clear
trmenu
;;
8)
clear
trgomenu
;;
9)
clear
running
;;
10)
clear
addhost
;;
24)
clear
updatemenu
;;
25)
clear
sl-fix
;;
11)
clear
changeport
;;
15)
clear
wbmn
;;
16)
clear
limitspeed
;;
17)
clear
ram
;;
18)
clear
reboot
;;
19)
clear
speedtest
;;
20)
clear
info
;;
21)
clear
about
;;
22)
clear
exit
;;
esac
