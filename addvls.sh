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
clear
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP=$(curl -s ipinfo.io/ip )
MYIP=$(curl -sS ipv4.icanhazip.com)
MYIP=$(curl -sS ifconfig.me )

red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

clear
domain=$(cat /usr/local/etc/xray/domain)
MYIP2=$(wget -qO- ipv4.icanhazip.com);
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
if [ ! -e /etc/vless ]; then
  mkdir -p /etc/vless
fi

if [[ $iplimit -gt 0 ]]; then
mkdir -p /etc/kyt/limit/vless/ip
echo -e "$iplimit" > /etc/kyt/limit/vless/ip/$user
else
echo > /dev/null
fi

if [ -z ${Quota} ]; then
  Quota="0"
fi

c=$(echo "${Quota}" | sed 's/[^0-9]*//g')
d=$((${c} * 1024 * 1024 * 1024))

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/vless/${user}
fi
DATADB=$(cat /etc/vless/.vless.db | grep "^###" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/vless/.vless.db
fi
echo "### ${user} ${exp} ${uuid} ${Quota} ${iplimit}" >>/etc/vless/.vless.db
clear
cat >/var/www/html/vless-$user.txt <<-END

---------------------
Format Vless WS TLS
---------------------
- name: Vless-$user-WS TLS
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}

---------------------
Format Vless WS Non TLS
---------------------
- name: Vless-$user-WS (CDN) Non TLS
  server: ${domain}
  port: 80
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: false
  skip-cert-verify: false
  servername: ${domain}
  network: ws
  ws-opts:
    path: /vless
    headers:
      Host: ${domain}
  udp: true

---------------------
Format Vless gRPC (SNI)
---------------------
- name: Vless-$user-gRPC (SNI)
  server: ${domain}
  port: 443
  type: vless
  uuid: ${uuid}
  cipher: auto
  tls: true
  skip-cert-verify: true
  servername: ${domain}
  network: grpc
  grpc-opts:
  grpc-mode: gun
    grpc-service-name: vless-grpc

◇━━━━━━━━━━━━━━━━━◇
# Link Vless Account
◇━━━━━━━━━━━━━━━━━◇
Link TLS      : 
${vlesslink1}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink2}
◇━━━━━━━━━━━━━━━━━◇
Link GRPC     : 
${vlesslink3}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink4}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink5}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink6}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink7}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink8}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink9}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink10}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink11}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink12}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink13}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink14}
◇━━━━━━━━━━━━━━━━━◇
Link none TLS : 
${vlesslink15}
◇━━━━━━━━━━━━━━━━━◇


END

systemctl restart xray
systemctl restart nginx
clear
echo -e ""
echo -e "${z}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e " CREATE VLESS ACCOUNT           "
echo -e "${z}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "Remarks       : ${user}"
echo -e "Host          : ${domain}"
#echo -e "Host XrayDns  : ${NS}"
#echo -e "Public Key    : ${PUB}"
echo -e "Limit Ip      : ${iplimit} Login"
#echo -e "Limit Quota : ${Quota} GB"
echo -e "Port TLS      : 443"
echo -e "Port gRPC     : 443"
echo -e "Port None TLS : 80"
#echo -e "Port XrayDns  : 443,5300,53,80"
echo -e "User ID       : ${uuid}"
echo -e "Encryption    : none"
echo -e "Path          : /vless ~ (/Multipath)"
echo -e "ServiceName   : vless-grpc"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link TLS    :"
echo -e "${vlesslink1}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link NTLS   :"
echo -e "${vlesslink2}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link GRPC   :"
echo -e "${vlesslink3}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link DIGI-EXP   :"
echo -e "${vlesslink4}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link DIGI-APN :"
echo -e "${vlesslink5}"
echo -e "${z}☉—————————————————☉${NC}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link DIGI-BOSSTER   :"
echo -e "${vlesslink6}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link DIGI-BOSSTER-V2        :"
echo -e "${vlesslink7}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link Umobile-funz            :"
echo -e "${vlesslink8}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link UMOBILE    :"
echo -e "${vlesslink9}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link YES    :"
echo -e "${vlesslink10}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link SELCOM-BOSTER-3MBPS   :"
echo -e "${vlesslink11}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link UNIFI-Bebas   :"
echo -e "${vlesslink12}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link UNIFI-Uni5G   :"
echo -e "${vlesslink13}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link MAXIS-FREEZE   :"
echo -e "${vlesslink14}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Link MAXIS-FREEZE-V2   :"
echo -e "${vlesslink15}"
echo -e "${z}☉————————————————————☉${NC}"
echo -e "Format OpenClash : https://${domain}:81/vless-$user.txt"
echo -e "${z}☉—————————————————☉${NC}"
echo -e "Remarks       : ${user}"
echo -e "Host          : ${domain}"
echo -e "Aktif Selama  : $masaaktif Hari"
echo -e "Dibuat Pada   : $tnggl"
echo -e "Exp-comfig    : $expe"
echo -e "User ID       : ${uuid}"
echo -e "Telco         : Telco"
echo -e "${z}☉—————————————————☉${NC}"
echo -e "${z}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "              Script By zaki/tunnel            "
echo -e "${z}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
m-vless
