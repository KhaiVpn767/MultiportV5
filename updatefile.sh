#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
# download script
cd /usr/local/sbin
wget -O ins-helium "https://${Server_URL}/ins-helium.sh"
wget -O bbr "https://${Server_URL}/bbr.sh"
wget -O wssgen "https://${Server_URL}/wssgen.sh"
wget -O add-host "https://${Server_URL}/add-host.sh"
wget -O speedtest "https://${Server_URL}/speedtest_cli.py"
wget -O xp "https://${Server_URL}/xp.sh"
wget -O menu "https://${Server_URL}/menu.sh"
wget -O status "https://${Server_URL}/status.sh"
wget -O info "https://${Server_URL}/info.sh"
wget -O restart "https://${Server_URL}/restart.sh"
wget -O ram "https://${Server_URL}/ram.sh"
wget -O dns "https://${Server_URL}/dns.sh"
wget -O nf "https://${Server_URL}/media.sh"
wget -O limit "https://${Server_URL}/limit-speed.sh"
wget -O menu-tr "https://${Server_URL}/menu-tr.sh"
wget -O menu-ws "https://${Server_URL}/menu-ws.sh"
wget -O menu-vless "https://${Server_URL}/menu-vless.sh"
wget -O menu-xtr "https://${Server_URL}/menu-xtr.sh"
wget -O menu-xrt "https://${Server_URL}/menu-xrt.sh"
wget -O certxray "https://${Server_URL}/cert.sh"
chmod +x menu-tr
chmod +x menu-ws
chmod +x menu-vless
chmod +x menu-xtr
chmod +x menu-xrt
chmod +x certxray
chmod +x ins-helium
chmod +x bbr
chmod +x wssgen
chmod +x menu
chmod +x add-host
chmod +x speedtest
chmod +x xp
chmod +x status
chmod +x info
chmod +x restart
chmod +x ram
chmod +x dns
chmod +x nf
chmod +x limit
echo "0 6 * * * root reboot" >> /etc/crontab
echo "0 1 * * * root /usr/local/sbin/xp" >> /etc/crontab
echo "0 2 * * * root /usr/bin/cleaner" >> /etc/crontab
echo "0 5 * * * root backup" >> /etc/crontab
echo "0 23 * * * root backup" >> /etc/crontab
cd

service cron restart >/dev/null 2>&1
service cron reload >/dev/null 2>&1

echo -e " [INFO] Update Successfully"
sleep 2
exit
