#!/data/data/com.termux/files/usr/bin/bash
# ALVAN TOOLS by Zaid-alvan

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
C='\033[1;36m'
W='\033[0m'

banner() {
clear
echo -e "${R}"
echo " █████╗ ██╗     ██╗   ██╗ █████╗ ███╗   ██╗"
echo "██╔══██╗██║     ██║   ██║██╔══██╗████╗  ██║"
echo "███████║██║     ██║   ██║███████║██╔██╗ ██║"
echo "██╔══██║██║     ╚██╗ ██╔╝██╔══██║██║╚██╗██║"
echo "██║  ██║███████╗ ╚████╔╝ ██║  ██║██║ ╚████║"
echo "╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝"
echo -e "${W}${G}         >> ALVAN TOOLS v1.0 <<${W}"
echo -e "${C}=========================================${W}"
}

menu() {
banner
echo -e "${Y}[1]${W} Terminal Linux ${G}[Naga Mode]${W}"
echo -e "${Y}[2]${W} Terminal Andax ${R}[Skull Mode]${W}"
echo -e "${Y}[0]${W} Keluar"
echo -e "${C}=========================================${W}"
read -p "Pilih menu bro: " pilih
}

linux_mode() {
clear
echo -e "${G}"
echo '               __'
echo '              / _)\'
echo '     _.----._/ /