#!/data/data/com.termux/files/usr/bin/bash

# ALVAN TOOLS V3 - MATRIX EDITION NO LOLCAT
M='\033[1;35m' # Magenta
H='\033[1;32m' # Hijau
K='\033[1;33m' # Kuning
B='\033[1;34m' # Biru
C='\033[1;36m' # Cyan
P='\033[0m' # Putih
R='\033[1;31m' # Merah

# CEK DEPENDENCY
command -v cmatrix >/dev/null 2>&1 || { echo -e "${R}Install cmatrix dulu: pkg install cmatrix${P}"; exit 1; }
command -v figlet >/dev/null 2>&1 || { echo -e "${R}Install figlet dulu: pkg install figlet${P}"; exit 1; }
command -v toilet >/dev/null 2>&1 || { echo -e "${R}Install toilet dulu: pkg install toilet${P}"; exit 1; }

ketik() {
    for ((i=0; i<${#1}; i++)); do
        echo -n "${1:$i:1}"
        sleep ${2:-0.03}
    done
    echo
}

banner() {
clear
timeout 2 cmatrix -s -C green
clear
echo -e "${R}"
figlet -f slant "ALVAN"
toilet -f term "NAGA V3" -F gay
echo -e "${C}====== ALVAN TERMINAL TOOLS MATRIX ======${P}"
echo -e "${K}Coder: Zaid Alvan | Versi: 3.0 HACKER${P}"
echo -e "${M}===========================================${P}"
}

info_hp() {
    clear
    banner
    ketik "${H}[+] Scanning Device..." 0.02
    sleep 1
    echo -e "${B}Model :${P} $(getprop ro.product.model)"
    echo -e "${B}Android :${P} $(getprop ro.build.version.release)"
    echo -e "${B}CPU :${P} $(getprop ro.product.cpu.abi)"
    echo -e "${B}Baterai :${P} $(termux-battery-status | grep percentage | cut -d: -f2 | tr -d ',')"
    echo -e "${B}IP Public :${P} $(curl -s ifconfig.me)"
    echo -e "${M}======================================${P}"
    read -p "Pencet Enter buat balik..." x
}

tools_net() {
    clear
    banner
    echo -e "${H}[1]${P} Ping Google"
    echo -e "${H}[2]${P} Cek IP Website"
    echo -e "${H}[3]${P} Nonton Matrix"
    echo -e "${H}[0]${P} Kembali"
    read -p "Pilih: " net
    case $net in
        1) ping -c 4 google.com; read -p "Enter..." x ;;
        2) read -p "Masukin domain: " domain; nslookup $domain; read -p "Enter..." x ;;
        3) cmatrix -s -C green ;;
        0) ;;
        *) ketik "${R}Salah pilih bro${P}" 0.02; sleep 1 ;;
    esac
}

spam_gabut() {
    clear
    banner
    read -p "Teks yang mau di spam: " teks
    read -p "Mau berapa kali: " jumlah
    ketik "${R}Mulai spam dalam 3 detik...${P}" 0.05
    sleep 3
    for ((i=1; i<=jumlah; i++)); do
        echo -e "${H}[$i] $teks${P}"
        sleep 0.1
    done
    read -p "Kelarr. Pencet Enter..." x
}

while true; do
    banner
    echo -e "${H}[1]${P} Info HP & Jaringan"
    echo -e "${H}[2]${P} Tools Jaringan + Matrix"
    echo -e "${H}[3]${P} Spam Text Gabut"
    echo -e "${H}[4]${P} Install Package Penting"
    echo -e "${H}[0]${P} Keluar Tools"
    echo -e "${M}======================================${P}"
    read -p "Pilih menu naga: " menu

    case $menu in
        1) info_hp ;;
        2) tools_net ;;
        3) spam_gabut ;;
        4)
           clear
           ketik "${K}Install python, php, nodejs, git...${P}" 0.02
           pkg update -y && pkg install python php nodejs git -y
           ketik "${H}Semua udah keinstall bro!${P}" 0.02
           sleep 2
           ;;
        0)
           clear
           timeout 2 cmatrix -s -C red
           clear
           ketik "${R}EXITING ALVAN TOOLS V3...${P}" 0.03
           ketik "${R}Salam NAGA MATRIX!!!${P}" 0.05
           exit 0
           ;;
        *)
           ketik "${R}Menu ga ada bro, pilih 0-4 aja${P}" 0.02
           sleep 1
           ;;
    esac
done