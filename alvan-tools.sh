#!/data/data/com.termux/files/usr/bin/bash
# ALVAN TOOLS by Zaid-alvan

R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
C='\033[1;36m'
W='\033[0m'

ketik() {
    text="$1"
    speed=${2:-0.02}
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep $speed
    done
    echo
}

loading() {
    echo -n "$1"
    for i in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    echo
}

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
cat << "NAGA"
               __
              / _)\\
     _.----._/ /
    /         /
 __/ (  | (  |
/__.-|_|--|_|
NAGA
echo -e "${W}"
echo -e "${G}====== ALVAN HACK LINUX - HACK LINUX ======${W}"
echo -e "${Y}1.${W} 1       : lacak posisi pakai no hp"
echo -e "${Y}2.${W} 2    : Lihat semua file + data target"
echo -e "${Y}3.${W} 3        : bobol Facebook"
echo -e "${Y}4.${W} 4     : hack wa"
echo -e "${Y}5.${W} 5    : spam wa"
echo -e "${Y}6.${W} 6        : terminal app"
echo -e "${Y}7.${W} 7        : file Walawe"
echo -e "${Y}8.${W} 8       : camera on tasgr"
echo -e "${Y}9.${W} 9      : keaman cyber"
echo -e "${Y}10.${W} 10      : op dana grt"
echo -e "${Y}11.${W} 11 : stm riset wtyou"
echo -e "${Y}12.${W} notif     : jangan di salah gunakan untuk candaan aja ya bro"
echo -e "${C}=============================================${W}"
echo -e "${G} notif: jangan di salah gunakan ya bro${W}"
read -p "Pilih salah satu..." back
}

andax_mode() {
clear
echo -e "${R}"
cat << "SKULL"
      ______
   .-\"      \"-.
  /            \\
 |              |
 |,  .-.  .-.  ,|
 | )(_o/  \\o_)( |
 |/     /\\     \\|
 (_     ^^     _)
  \\__|IIIIII|__/
   | \\IIIIII/ |
   \\          /
    `--------`
SKULL
echo -e "${W}"
echo -e "${R}====== ALVAN TERMINAL ANDAX - BELAJAR CODING ======${W}"
echo -e "${Y}1. Bash:${W} echo \"Hello World\""
echo -e "${Y}2. Python:${W} print(\"Hello World\")"
echo -e "${Y}3. PHP:${W} <?php echo \"Hello World\"; ?>"
echo -e "${Y}4. JavaScript:${W} console.log(\"Hello World\")"
echo -e "${Y}5. HTML:${W} <h1>Hello World</h1>"
echo -e "${C}--------------- TIPS NGODING ----------------${W}"
echo -e "${G}Variabel Bash:${W} nama=\"Alvan\""
echo -e "${G}If Bash:${W} if [ \$nama == \"Alvan\" ]; then echo \"GG\"; fi"
echo -e "${G}Loop Bash:${W} for i in {1..5}; do echo \$i; done"
echo -e "${G}Fungsi Bash:${W} function gas(){ echo \"Letsgo\"; }"
echo -e "${C}==============================================${W}"
echo -e "${R}Install bahasa: pkg install python php nodejs${W}"
read -p "Pencet Enter buat balik menu..." back
}

while true; do
menu
case $pilih in
  1) 
    clear
    ketik "${R}Memulai Program..." 0.05
    loading "Loading NAGA"
    sleep 1
    ketik "${G}███╗   ██╗ █████╗  ██████╗  █████╗ ${W}"0.005
    ketik "${G}████╗  ██║██╔══██╗██╔════╝ ██╔══██╗${W}"0.005
    ketik "${G}██╔██╗ ██║███████║██║  ███╗███████║${W}"0.005
    ketik "${R}>>> SCRIPT BY ALVAN TOOLS <<<${W}" 0.05
    sleep 1
    ketik "${Y}Tekan Enter untuk lanjut..." 0.03
    read
    ;;
  2) andax_mode ;;
  0) clear; ketik "${G}Thanks udah pake ALVAN TOOLS 🐉${W}" 0.03; exit 0 ;;
  *) ketik "${R}Pilihan ga ada bro${W}" 0.03; sleep 1 ;;
esac
done