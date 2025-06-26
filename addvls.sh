#!/bin/bash
# //====================================================
# //	System Request:Debian 9+/Ubuntu 18.04+/20+
# //	Author:	zaki
# //	Dscription: Xray Menu Management
# //	email: zaki20211@gmail.com
# //====================================================
# // font color configuration | khaiVPN AUTOSCRIPT
###########- COLOR CODE -##############
VC="\e[0m"
Green="\e[92;1m"
BICyan='\033[1;96m'
BIYellow='\033[1;93m'
WH='\033[1;37m'
y='\033[1;33m' #yellow
l='\033[0;37m'
BGX="\033[42m"
CYAN="\033[96m"
z="\033[96m"
zx="\033[97;1m" # // putih
RED='\033[0;31m'
NC='\033[0m'
gray="\e[1;30m"
Blue="\033[0;34m"
green='\033[1;32m'
grenbo="\e[92;1m"
purple="\033[1;95m"
YELL='\033[0;33m'
cyan="\033[1;36m"
c="\033[5;33m"
###########- END COLOR CODE -##########
# Getting
export CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
export KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script

clear
PUB=$(cat /etc/slowdns/server.pub)
NS=$(cat /etc/xray/dns)
domain=$(cat /usr/local/etc/xray/domain)
clear
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e " CREATE VLESS ACCOUNT           "
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

  read -rp "User: " -e user
  CLIENT_EXISTS=$(grep -w $user /usr/local/etc/xray/vless.json | wc -l)

  if [[ ${CLIENT_EXISTS} == '1' ]]; then
    clear
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
  echo -e " CREATE VLESS ACCOUNT           "
  echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo "A client with the specified name was already created, please choose another name."
    echo ""
    echo -e "\033[1;93m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
  fi
done
#JanganLupaMakanYa
read -p "Uuid (Manual): " uuid
read -p "Expired (days): " masaaktif
#read -p "Bug (Host): " bug
#read -p "Limit User (IP): " iplimit
#read -p "Limit User (GB): " Quota
#JanganLupaMakanYa
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
tnggl="$tgl2 $bln2, $thn2"
exp=$(date -d "$masaaktif days" +"%Y-%m-%d")
sed -i '/#vless$/a\#& '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/vless.json
sed -i '/#vlessgrpc$/a\#vlg '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/vnone.json
#JanganLupaMakanYa
vlesslink1="vless://${uuid}@${domain}:443?path=/vless&security=tls&encryption=none&host=${domain}&type=ws&sni=${bug}#${user}"
vlesslink2="vless://${uuid}@${bug}:80?path=/vless&security=none&encryption=none&host=${domain}&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=${bug}#${user}"
vlesslink4="vless://${uuid}@104.16.210.12:80?path=/vless&encryption=none&host=www.speedtest.net.${domain}&type=ws#DIGI-EXP-${user}"
vlesslink5="vless://${uuid}@api.useinsider.com:80?path=/vless&encryption=none&host=${sts}${domain}&type=ws#DIGI-APN-${user}"
vlesslink6="vless://${uuid}@162.159.134.61:80?path=/vless&encryption=none&host=${sts}${domain}&type=ws#DIGI-BOSSTER-${user}"
vlesslink7="vless://${uuid}@172.66.40.170:80?path=/vless&encryption=none&host=cdn.opensignal.com.${domain}&type=ws#DIGI-BOSSTER-V2-${user}"
vlesslink8="vless://${uuid}@${domain}:80?path=/vless&encryption=none&host=m.pubgmobile.com&type=ws#UMOBILE-FUNZ-${user}"
vlesslink9="vless://${uuid}@104.18.8.53:80?path=/vless&encryption=none&host=${domain}&type=ws#UMOBILE-${user}"
vlesslink10="vless://${uuid}@104.17.113.188:80?path=/vless&encryption=none&host=eurohealthobservatory.who.int.${domain}&type=ws#YES-${user}"
vlesslink11="vless://${uuid}@104.17.147.22:80?path=/vless&encryption=none&host=www.speedtest.net.${domain}&type=ws#SELCOM-BOSTER-3MBPS-${user}"
vlesslink12="vless://${uuid}@104.17.10.12:80?path=/vless&encryption=none&host=cdn.who.int.${domain}&type=ws#UNIFI-Bebas-${user}"
vlesslink13="vless://${uuid}@speedtest.unifi.com.my.${domain}:80?path=/vless&encryption=none&host=&type=ws#Uni5G-${user}"
vlesslink14="vless://${uuid}@104.18.6.178:80?path=/vless&encryption=none&host=speedtest-univ-results-api.speedtest.net.${domain}&type=ws#MAXIS-FREEZE-${user}"
vlesslink15="vless://${uuid}@cdn.opensignal.com:80?path=/vless&encryption=none&host=cdn.opensignal.com.${domain}&type=ws#MAXIS-FREEZE-V2-${user}"
#JanganLupaMakanYa
cat > /home/vps/public_html/$user-$exp-VLESSTLS.yaml <<EOF
port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
  store-fake-ip: true
dns:
  enable: true
  ipv6: false
  use-host: true
  enhanced-mode: fake-ip
  listen: 0.0.0.0:7874
  nameserver:
    - 8.8.8.8
    - 1.0.0.1
    - https://dns.google/dns-query
  fallback:
    - 1.1.1.1
    - 8.8.4.4
    - https://cloudflare-dns.com/dns-query
    - 112.215.203.254
  default-nameserver:
    - 8.8.8.8
    - 1.1.1.1
    - 112.215.203.254
  fake-ip-range: 198.18.0.1/16
  fake-ip-filter:
    - "*.lan"
    - "*.localdomain"
    - "*.example"
    - "*.invalid"
    - "*.localhost"
    - "*.test"
    - "*.local"
    - "*.home.arpa"
    - time.*.com
    - time.*.gov
    - time.*.edu.cn
    - time.*.apple.com
    - time1.*.com
    - time2.*.com
    - time3.*.com
    - time4.*.com
    - time5.*.com
    - time6.*.com
    - time7.*.com
    - ntp.*.com
    - ntp1.*.com
    - ntp2.*.com
    - ntp3.*.com
    - ntp4.*.com
    - ntp5.*.com
    - ntp6.*.com
    - ntp7.*.com
    - "*.time.edu.cn"
    - "*.ntp.org.cn"
    - +.pool.ntp.org
    - time1.cloud.tencent.com
    - music.163.com
    - "*.music.163.com"
    - "*.126.net"
    - musicapi.taihe.com
    - music.taihe.com
    - songsearch.kugou.com
    - trackercdn.kugou.com
    - "*.kuwo.cn"
    - api-jooxtt.sanook.com
    - api.joox.com
    - joox.com
    - y.qq.com
    - "*.y.qq.com"
    - streamoc.music.tc.qq.com
    - mobileoc.music.tc.qq.com
    - isure.stream.qqmusic.qq.com
    - dl.stream.qqmusic.qq.com
    - aqqmusic.tc.qq.com
    - amobile.music.tc.qq.com
    - "*.xiami.com"
    - "*.music.migu.cn"
    - music.migu.cn
    - "*.msftconnecttest.com"
    - "*.msftncsi.com"
    - msftconnecttest.com
    - msftncsi.com
    - localhost.ptlogin2.qq.com
    - localhost.sec.qq.com
    - +.srv.nintendo.net
    - +.stun.playstation.net
    - xbox.*.microsoft.com
    - xnotify.xboxlive.com
    - +.battlenet.com.cn
    - +.wotgame.cn
    - +.wggames.cn
    - +.wowsgame.cn
    - +.wargaming.net
    - proxy.golang.org
    - stun.*.*
    - stun.*.*.*
    - +.stun.*.*
    - +.stun.*.*.*
    - +.stun.*.*.*.*
    - heartbeat.belkin.com
    - "*.linksys.com"
    - "*.linksyssmartwifi.com"
    - "*.router.asus.com"
    - mesu.apple.com
    - swscan.apple.com
    - swquery.apple.com
    - swdownload.apple.com
    - swcdn.apple.com
    - swdist.apple.com
    - lens.l.google.com
    - stun.l.google.com
    - +.nflxvideo.net
    - "*.square-enix.com"
    - "*.finalfantasyxiv.com"
    - "*.ffxiv.com"
    - "*.mcdn.bilivideo.cn"
    - +.media.dssott.com
proxies:
  - name: XRAY_VLESS_TLS_${user}
    server: ${sts}${domain}
    port: 443
    type: vless
    uuid: ${uuid}
    cipher: auto
    tls: true
    skip-cert-verify: true
    servername: ${sni}
    network: ws
    ws-opts:
      path: /vless-tls
      headers:
        Host: ${domain}
    udp: true
proxy-groups:
  - name: KhaiVpn767-Autoscript
    type: select
    proxies:
      - XRAY_VLESS_TLS_${user}
      - DIRECT
rules:
  - MATCH,KhaiVpn767-Autoscript
EOF

cat > /home/vps/public_html/$user-$exp-VLESSNTLS.yaml <<EOF
port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
tproxy-port: 7895
ipv6: false
mode: rule
log-level: silent
allow-lan: true
external-controller: 0.0.0.0:9090
secret: ""
bind-address: "*"
unified-delay: true
profile:
  store-selected: true
  store-fake-ip: true
dns:
  enable: true
  ipv6: false
  use-host: true
  enhanced-mode: fake-ip
  listen: 0.0.0.0:7874
  nameserver:
    - 8.8.8.8
    - 1.0.0.1
    - https://dns.google/dns-query
  fallback:
    - 1.1.1.1
    - 8.8.4.4
    - https://cloudflare-dns.com/dns-query
    - 112.215.203.254
  default-nameserver:
    - 8.8.8.8
    - 1.1.1.1
    - 112.215.203.254
  fake-ip-range: 198.18.0.1/16
  fake-ip-filter:
    - "*.lan"
    - "*.localdomain"
    - "*.example"
    - "*.invalid"
    - "*.localhost"
    - "*.test"
    - "*.local"
    - "*.home.arpa"
    - time.*.com
    - time.*.gov
    - time.*.edu.cn
    - time.*.apple.com
    - time1.*.com
    - time2.*.com
    - time3.*.com
    - time4.*.com
    - time5.*.com
    - time6.*.com
    - time7.*.com
    - ntp.*.com
    - ntp1.*.com
    - ntp2.*.com
    - ntp3.*.com
    - ntp4.*.com
    - ntp5.*.com
    - ntp6.*.com
    - ntp7.*.com
    - "*.time.edu.cn"
    - "*.ntp.org.cn"
    - +.pool.ntp.org
    - time1.cloud.tencent.com
    - music.163.com
    - "*.music.163.com"
    - "*.126.net"
    - musicapi.taihe.com
    - music.taihe.com
    - songsearch.kugou.com
    - trackercdn.kugou.com
    - "*.kuwo.cn"
    - api-jooxtt.sanook.com
    - api.joox.com
    - joox.com
    - y.qq.com
    - "*.y.qq.com"
    - streamoc.music.tc.qq.com
    - mobileoc.music.tc.qq.com
    - isure.stream.qqmusic.qq.com
    - dl.stream.qqmusic.qq.com
    - aqqmusic.tc.qq.com
    - amobile.music.tc.qq.com
    - "*.xiami.com"
    - "*.music.migu.cn"
    - music.migu.cn
    - "*.msftconnecttest.com"
    - "*.msftncsi.com"
    - msftconnecttest.com
    - msftncsi.com
    - localhost.ptlogin2.qq.com
    - localhost.sec.qq.com
    - +.srv.nintendo.net
    - +.stun.playstation.net
    - xbox.*.microsoft.com
    - xnotify.xboxlive.com
    - +.battlenet.com.cn
    - +.wotgame.cn
    - +.wggames.cn
    - +.wowsgame.cn
    - +.wargaming.net
    - proxy.golang.org
    - stun.*.*
    - stun.*.*.*
    - +.stun.*.*
    - +.stun.*.*.*
    - +.stun.*.*.*.*
    - heartbeat.belkin.com
    - "*.linksys.com"
    - "*.linksyssmartwifi.com"
    - "*.router.asus.com"
    - mesu.apple.com
    - swscan.apple.com
    - swquery.apple.com
    - swdownload.apple.com
    - swcdn.apple.com
    - swdist.apple.com
    - lens.l.google.com
    - stun.l.google.com
    - +.nflxvideo.net
    - "*.square-enix.com"
    - "*.finalfantasyxiv.com"
    - "*.ffxiv.com"
    - "*.mcdn.bilivideo.cn"
    - +.media.dssott.com
proxies:
  - name: XRAY_VLESS_NTLS_${user}
    server: ${sts}${domain}
    port: 80
    type: vless
    uuid: ${uuid}
    cipher: auto
    tls: false
    skip-cert-verify: true
    servername: ${sni}
    network: ws
    ws-opts:
      path: /vless-ntls
      headers:
        Host: ${domain}
    udp: true
proxy-groups:
  - name: KhaiVpn767-Autoscript
    type: select
    proxies:
      - XRAY_VLESS_NTLS_${user}
      - DIRECT
rules:
  - MATCH,KhaiVpn767-Autoscript
EOF

clear
echo -e ""
echo -e "════[XRAY VLESS WS]═════"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "IP/Host           : ${MYIP}"
echo -e "Port TLS          : 443"
echo -e "Port None TLS     : 80, 8080, 8880"
echo -e "ID                : ${uuid}"
echo -e "Security          : TLS"
echo -e "Encryption        : None"
echo -e "Network           : WS"
echo -e "Path TLS          : /vless-tls"
echo -e "Path NTLS         : /vless-ntls"
echo -e "Multipath         : /MultiportV5"
echo -e "═══════════════════"
echo -e "Link WS TLS       : ${vlesslink1}"
echo -e "═══════════════════"
echo -e "Link WS None TLS  : ${vlesslink2}"
echo -e "═══════════════════"
echo -e "Link DIGI-BOSSTER"
echo -e "${vlesslink3}"
echo -e "═══════════════════"
echo -e "Link DIGI-BOSSTER-V2"
echo -e "${vlesslink4}"
echo -e "═══════════════════"
echo -e "Link UMOBILE-FUNZ"
echo -e "${vlesslink5}"
echo -e "═══════════════════"
echo -e "Link UMOBILE"
echo -e "${vlesslink6}"
echo -e "═══════════════════"
echo -e "Link YES"
echo -e "${vlesslink7}"
echo -e "═══════════════════"
echo -e "Link SELCOM-BOSTER-3MBPS"
echo -e "${vlesslink8}"
echo -e "═══════════════════"
echo -e "Link Uni5G"
echo -e "${vlesslink9}"
echo -e "═══════════════════"
echo -e "Link MAXIS-FREEZE"
echo -e "${vlesslink10}"
echo -e "═══════════════════"
echo -e "Link MAXIS-FREEZE-V2"
echo -e "${vlesslink11}"
echo -e "═══════════════════"
echo -e "YAML WS TLS       : http://${MYIP2}:81/$user-VLESSTLS.yaml"
echo -e "═══════════════════"
echo -e "YAML WS None TLS  : http://${MYIP2}:81/$user-VLESSNTLS.yaml"
echo -e "═══════════════════"
echo -e "Telco       :"
echo -e "Remarks     : ${user}"
echo -e "Created On  : $hariini"
echo -e "Expired On  : $exp"
echo -e "ID          : ${uuid}"
echo -e "═══════════════════"
echo -e ""
echo -e "Script Mod By KhaiVPN"
echo ""
read -p "$( echo -e "Press ${orange}[ ${NC}${green}Enter${NC} ${CYAN}]${NC} Back to menu . . .") "
menu-vless
