#!/data/data/com.termux/files/usr/bin/bash

# Auto install - SEKARANG CEK NMAP JUGA
if ! command -v lolcat &> /dev/null ||! command -v nmap &> /dev/null ||! command -v figlet &> /dev/null; then
    echo "Install tools yang belum ada..."
    pkg update -y
    pkg install figlet ruby python nmap curl -y > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
fi

while true; do
clear
figlet -f big "INFO-TOOL" | lolcat
echo "[*] Teknik Informatika v2.3" | lolcat
echo ""
echo " [01] >> Belajar Python"
echo " [02] >> Web Dev Roadmap" | lolcat
echo " [03] >> Linux Command"
echo " [04] >> Jaringan - Ping" | lolcat
echo " [05] >> Cek IP Public"
echo " [06] >> Scan Port Sendiri" | lolcat
echo " [07] >> Cyber Security Legal"
echo ""
echo " [00] >> Keluar"
echo ""
read -p " [INFO-TOOL]> Pilih: " pilih

case $pilih in
  1) clear; echo "PYTHON DASAR" | lolcat; python -c "print('Halo Dunia'); a=5; b=3; print(f'5 + 3 = {a+b}')"; read -p "Enter..." ;;
  2) clear; echo "ROADMAP WEB DEV" | lolcat; echo "1. HTML > 2. CSS > 3. JS > 4. PHP > 5. MySQL"; read -p "Enter..." ;;
  3)clear; 
   echo "PERINTAH WAJIB LINUX + KALI LINUX" | lolcat
   echo ""
   # Logo Kali Linux ASCII
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣄' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠛⠉⠙⠛⠛⠻⢿⣿⣦⣀' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠋⠀⠀⠀⠀⠀⡀⠀⠀⠀⠈⢻⣿⣷⣄' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠟⠀⠀⠀⣠⣶⣿⣿⣿⣿⣶⣄⠀⠀⠹⣿⣷⡀' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⡏⠀⠀⠀⢰⣿⣿⠋⠉⠙⢿⣿⡆⠀⠀⢻⣿⣷' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠁⠀⠀⠀⠈⠛⠛⠀⣿⣿⠀⠛⠛⠁⠀⠀⠈⣿⣿⡇' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣇⠀⠀⠀⠀⠀⠀⢸⣿⣿' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⢀⣿⣿⡀⠀⠀⠀⠀⠀⢸⣿⣿' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣇⠀⠀⠀⠀⠀⠀⢸⣿⡿⢿⣿⡇⠀⠀⠀⠀⠀⣸⣿⡟' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣆⠀⠀⠀⠀⠀⠈⠉⠀⠀⠉⠁⠀⠀⠀⠀⣰⣿⡟⠁' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡟⠁' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⡿⠋' | lolcat
   echo '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣷⣶⣶⣶⣶⣿⡿⠟⠋' | lolcat
   echo ""
   echo "1. ls      > Lihat isi folder" | lolcat
   echo "2. cd      > Pindah folder. Contoh: cd /sdcard" | lolcat  
   echo "3. pwd     > Liat posisi folder lu sekarang" | lolcat
   echo "4. mkdir   > Bikin folder baru" | lolcat
   echo "5. nano    > Edit file" | lolcat
   echo "6. nmap    > Scan port. Contoh: nmap localhost" | lolcat
   echo "7. cat     > Baca isi file" | lolcat
   echo "8. grep    > Cari kata di file" | lolcat
   echo "9. ping    > Cek koneksi" | lolcat
   echo "10. rm     > Hapus file. HATI-HATI" | lolcat
   echo ""
   read -p "Enter buat balik ke menu..." ;;
  4) clear; read -p "Domain/IP: " d; ping -c 3 $d; read -p "Enter..." ;;
  5) clear; curl -s ipinfo.io | grep -E 'ip|city|country'; read -p "Enter..." ;;
  6) clear; echo "Scan localhost:" | lolcat; nmap -F localhost; read -p "Enter..." ;;
  7) clear; echo "Belajar Legal: portswigger.net/web-security"; termux-open-url "https://portswigger.net/web-security"; read -p "Enter..." ;;
  0) exit ;;
  *) echo "Pilih 1-7" | lolcat; sleep 1 ;;
esac
done