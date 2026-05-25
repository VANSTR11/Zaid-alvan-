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
cat << "NAGA"
               __
              / _)\\
     _.----._/ /
    /         /
 __/ (  | (  |
/__.-|_|--|_|
NAGA
echo -e "${W}"
echo -e "${G}====== TERMINAL LINUX - HACK LINUX ======${W}"
echo -e "${Y}1.${W} pwd       : lacak posisi pakai no hp"
echo -e "${Y}2.${W} ls -la    : Lihat semua file + data target"
echo -e "${Y}3.${W} cd        : Pindah direktori. Ex: cd /sdcard"
echo -e "${Y}4.${W} mkdir     : Bikin folder baru. Ex: mkdir alvan"
echo -e "${Y}5.${W} rm -rf    : Hapus file/folder. Hati-hati!"
echo -e "${Y}6.${W} cp        : Copy file. Ex: cp file.txt /sdcard"
echo -e "${Y}7.${W} mv        : Pindah/ganti nama file"
echo -e "${Y}8.${W} cat       : Baca isi file. Ex: cat file.txt"
echo -e "${Y}9.${W} nano      : Edit file di terminal"
echo -e "${Y}10.${W} pkg      : Install paket Termux. Ex: pkg install python"
echo -e "${Y}11.${W} chmod +x : Kasih izin eksekusi ke file"
echo -e "${Y}12.${W} top      : Liat proses yang jalan"
echo -e "${C}=============================================${W}"
echo -e "${G}Tips: Ketik \"bash\" buat masuk shell interaktif${W}"
read -p "Pencet Enter buat balik menu..." back
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
echo -e "${R}====== TERMINAL ANDAX - BELAJAR CODING ======${W}"
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
  1) linux_mode ;;
  2) andax_mode ;;
  0) clear; echo -e "${G}Thanks udah pake ALVAN TOOLS 🐉${W}"; exit 0 ;;
  *) echo -e "${R}Pilihan ga ada bro${W}"; sleep 1 ;;
esac
done