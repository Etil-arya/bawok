#!/bin/bash
# ==========================================
# Color
# hapus menu
rm -rf menu
rm -rf ipsaya
rm -rf sshovpnmenu
rm -rf l2tpmenu
rm -rf pptpmenu
rm -rf sstpmenu
rm -rf wgmenu
rm -rf vmessmenu
rm -rf vlessmenu
rm -rf trmenu
rm -rf trgomenu
rm -rf setmenu
rm -rf running

# download menu
cd /usr/bin
rm -rf menu
rm -rf menuinfo
rm -rf restart
rm -rf slhost
rm -rf addssh
wget -O restart "https://raw.githubusercontent.com/Etil-arya/bawok/main/ssh/restart.sh"
wget -O addssh "https://raw.githubusercontent.com/Etil-arya/bawok/main/ssh/addssh.sh"
wget -O menu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/menu.sh"
wget -O ipsaya "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/ipsaya.sh"
wget -O sshovpnmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/sshovpn.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/l2tpmenu.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/pptpmenu.sh"
wget -O wgmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/wgmenu.sh"
wget -O ssmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/ssmenu.sh"
wget -O ssrmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/ssrmenu.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/vlessmenu.sh"
wget -O trmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/setmenu.sh"
wget -O running "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/running.sh"
wget -O updatemenu "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/updatemenu.sh"
wget -O slhost "https://raw.githubusercontent.com/Etil-arya/bawok/main/ssh/slhost.sh"
wget -O menuinfo "https://raw.githubusercontent.com/Etil-arya/bawok/main/update/menuinfo.sh"

chmod +x restart
chmod +x addssh
chmod +x menuinfo
chmod +x slhost
chmod +x menu
chmod +x ipsaya
chmod +x sshovpnmenu
chmod +x l2tpmenu
chmod +x pptpmenu
chmod +x wgmenu
chmod +x ssmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu
chmod +x running
chmod +x updatemenu
sl-download-info
cd
