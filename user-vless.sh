#!/bin/bash
# =========================================
# Quick Setup | Script Setup Manager
# Edition : Stable Edition V1.0
# Auther  : KhaiVpn767
# (C) Copyright 2022
# =========================================
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP=$(curl -s ipinfo.io/ip )
MYIP=$(curl -sS ipv4.icanhazip.com)
MYIP=$(curl -sS ifconfig.me )
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/usr/local/etc/xray/vless.json")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo -e "\\E[0;47;30m    Check XRAY Vless WS Config     \E[0m"
                echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                echo "You have no existing clients!"
                clear
                exit 1
        fi

        echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo -e "\\E[0;47;30m    Check XRAY Vless WS Config     \E[0m"
        echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo " Select the existing client to view the config"
        echo " Press CTRL+C to return"
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo "     No  Expired   User"
        grep -E "^### " "/usr/local/etc/xray/vless.json" | cut -d ' ' -f 2-3 | nl -s ') '
        until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
                if [[ ${CLIENT_NUMBER} == '1' ]]; then
                        read -rp "Select one client [1]: " CLIENT_NUMBER
                else
                        read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
                fi
        done
clear
echo ""
read -p "Bug Address (Example: www.google.com) : " address
read -p "Bug SNI/Host (Example : m.facebook.com) : " hst
bug_addr=${address}.
bug_addr2=${address}
if [[ $address == "" ]]; then
sts=$bug_addr2
else
sts=$bug_addr
fi
bug=${hst}
bug2=${domain}
if [[ $hst == "" ]]; then
sni=$bug2
else
sni=$bug
fi
user=$(grep -E "^### " "/usr/local/etc/xray/vless.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
domain=$(cat /usr/local/etc/xray/domain)
uuid=$(grep "},{" /usr/local/etc/xray/vless.json | cut -b 11-46 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/usr/local/etc/xray/vless.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
hariini=`date -d "0 days" +"%Y-%m-%d"`

vlesslink1="vless://${uuid}@${sts}${domain}:443?type=ws&encryption=none&security=tls&host=${domain}&path=/vless-tls&allowInsecure=1&sni=${sni}#XRAY_VLESS_TLS_${user}"
vlesslink2="vless://${uuid}@${sts}${domain}:80?type=ws&encryption=none&security=none&host=${domain}&path=/vless-ntls#XRAY_VLESS_NTLS_${user}"
vlesslink3="vless://${uuid}@162.159.134.61:80?path=/vless&encryption=none&host=${sts}${domain}&type=ws#DIGI-BOSSTER-${user}"
vlesslink4="vless://${uuid}@172.66.40.170:80?path=/vless&encryption=none&host=cdn.opensignal.com.${domain}&type=ws#DIGI-BOSSTER-V2-${user}"
vlesslink5="vless://${uuid}@${domain}:80?path=/vless&encryption=none&host=m.pubgmobile.com&type=ws#UMOBILE-FUNZ-${user}"
vlesslink6="vless://${uuid}@104.18.8.53:80?path=/vless&encryption=none&host=${domain}&type=ws#UMOBILE-${user}"
vlesslink7="vless://${uuid}@104.17.113.188:80?path=/vless&encryption=none&host=eurohealthobservatory.who.int.${domain}&type=ws#YES-${user}"
vlesslink8="vless://${uuid}@104.17.147.22:80?path=/vless&encryption=none&host=www.speedtest.net.${domain}&type=ws#SELCOM-BOSTER-3MBPS-${user}"
vlesslink9="vless://${uuid}@covidnow.pages.dev:80?path=ws://${domain}&encryption=none&host=opensignal.com&type=ws#Uni5G-${user}"
vlesslink10="vless://${uuid}@104.18.6.178:80?path=/vless&encryption=none&host=speedtest-univ-results-api.speedtest.net.${domain}&type=ws#MAXIS-FREEZE-${user}"
vlesslink11="vless://${uuid}@cdn.opensignal.com:80?path=/vless&encryption=none&host=cdn.opensignal.com.${domain}&type=ws#MAXIS-FREEZE-V2-${user}"

clear
echo -e ""
echo -e "═══[XRAY VLESS WS]═══"
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
echo -e "YAML WS TLS       : http://${MYIP}:81/$user-VLESSTLS.yaml"
echo -e "═══════════════════"
echo -e "YAML WS None TLS  : http://${MYIP}:81/$user-VLESSNTLS.yaml"
echo -e "═══════════════════"
echo -e "Telco       :"
echo -e "Remarks     : ${user}"
echo -e "Created On  : $hariini"
echo -e "Expired On  : $exp"
echo -e "ID          : ${uuid}"
echo -e "═══════════════════"
echo -e ""
echo -e "Autoscript By KhaiVpn767"
echo -e "" 
echo ""
read -p "$( echo -e "Press ${orange}[ ${NC}${green}Enter${NC} ${CYAN}]${NC} Back to menu . . .") "
menu-vless
