#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
# hapus menu
rm -rf ins-helium
rm -rf bbr
rm -rf wssgen
rm -rf add-host
rm -rf speedtest
rm -rf xp
rm -rf menu
rm -rf status
rm -rf info
rm -rf restart
rm -rf ram
rm -rf dns
rm -rf nf
rm -rf limit
rm -rf menu-tr
rm -rf menu-ws
rm -rf menu-vless
rm -rf menu-xtr
rm -rf certxray


# download script
cd /usr/local/sbin
wget -O https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/main/ins-helium.sh"
wget -O bbr "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/bbr.sh"
wget -O wssgen "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/wssgen.sh"
wget -O add-host "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/add-host.sh"
wget -O speedtest "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/speedtest_cli.py"
wget -O xp "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/xp.sh"
wget -O menu "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu.sh"
wget -O status "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/status.sh"
wget -O info "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/info.sh"
wget -O restart "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/restart.sh"
wget -O ram "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/ram.sh"
wget -O dns "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/dns.sh"
wget -O nf "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/media.sh"
wget -O limit "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/limit-speed.sh"
wget -O menu-tr "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu-tr.sh"
wget -O menu-ws "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu-ws.sh"
wget -O menu-vless "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu-vless.sh"
wget -O menu-xtr "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu-xtr.sh"
wget -O menu-xrt "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/menu-xrt.sh"
wget -O certxray "https://raw.githubusercontent.com/KhaiVpn767/MultiportV5/cert.sh"
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
