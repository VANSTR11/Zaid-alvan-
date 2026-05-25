#!/data/data/com.termux/files/usr/bin/bash

# ALVAN TOOLS V2 - BY ZAID ALVAN
# WARNA
M='\033[1;35m' # Magenta
H='\033[1;32m' # Hijau
K='\033[1;33m' # Kuning
B='\033[1;34m' # Biru
C='\033[1;36m' # Cyan
P='\033[0m' # Putih
R='\033[1;31m' # Merah

# EFEK KETIK
ketik() {
    for ((i=0; i<${#1}; i++)); do
        echo -n "${1:$i:1}"
        sleep ${2:-0.03}
    done
    echo
}

# BANNER NAGA V2
banner() {
clear
echo -e "${R}"
echo " █████╗ ██╗ ██╗ ██╗ █████╗ ███╗ ██╗"
echo "██╔══██╗██║ ██║ ██║██╔══██╗████╗ ██║"
echo "███████║██║ ██║ ██║███████║██╔██╗ ██║"
echo "██╔══██║██║ ╚██╗ ██╔╝██╔══██║██║╚██╗██║"
echo "██║ ██║███████╗╚████╔╝ ██║ ██║██║ ╚████║"
echo "╚═╝ ╚═╝╚══════╝ ╚═══╝ ╚═╝ ╚═╝╚═╝ ╚═══╝"
echo -e "${C}====== ALVAN TERMINAL TOOLS V2 ======${P}"
echo -e "${K}Coder: Zaid Alvan | Versi: 2.0 NAGA${P}"
echo -e "${M}======================================${P}"
}

# MENU 1: INFO HP
info_hp() {
    clear
    banner
    ketik "${H}[+] Mengambil Info Device..." 0.02
    sleep 1
    echo -e "${B}Model :${P} $(getprop ro.product.model)"
    echo -e "${B}Android :${P} $(getprop ro.build.version.release)"
    echo -e "${B}CPU :${P} $(getprop ro.product.cpu.abi)"
    echo -e "${B}Baterai :${P} $(termux-battery-status | grep percentage | cut -d: -f2 | tr -d ',')"
    echo -e "${B}IP Public :${P} $(curl -s ifconfig.me)"
    echo -e "${M}======================================${P}"
    read -p "Pencet Enter buat balik..." x
}

# MENU 2: TOOLS JARINGAN
tools_net() {
    clear
    banner
    echo -e "${H}[1]${P} Ping Google"
    echo -e "${H}[2]${P} Cek IP Website"
    echo -e "${H}[0]${P} Kembali"
    read -p "Pilih: " net
    case $net in
        1) ping -c 4 google.com; read -p "Enter..." x ;;
        2) read -p "Masukin domain: " domain; nslookup $domain; read -p "Enter..." x ;;
        0) ;;
        *) ketik "${R}Salah pilih bro${P}" 0.02; sleep 1 ;;
    esac
}

# MENU 3: SPAM TEXT GABUT
spam_gabut() {
    clear
    banner
    read -p "Teks yang mau di spam: " teks
    read -p "Mau berapa kali: " jumlah
    ketik "${R}Mulai spam dalam 3 detik...${P}" 0.05
    sleep 3
    for ((i=1; i<=jumlah; i++)); do
        echo "[$i] $teks"
        sleep 0.1
    done
    read -p "Kelarr. Pencet Enter..." x
}

# MENU UTAMA
while true; do
    banner
    echo -e "${H}[1]${P} Info HP & Jaringan"
    echo -e "${H}[2]${P} Tools Jaringan"
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
           ketik "${R}Thanks udah pake Alvan Tools V2${P}" 0.03
           ketik "${R}Salam NAGA!!!${P}" 0.05
           exit 0
           ;;
        *)
           ketik "${R}Menu ga ada bro, pilih 0-4 aja${P}" 0.02
           sleep 1
           ;;
    esac
done