#!/data/data/com.termux/files/usr/bin/bash

# Auto install
if! command -v lolcat &> /dev/null; then
    echo "Install tools informatika..."
    pkg update -y && pkg install figlet ruby python nmap -y > /dev/null 2>&1
    gem install lolcat > /dev/null 2>&1
fi

while true; do
clear
echo "[*] [*] [*] [*] [*] [*] [*] [*] [*] [*]" | lolcat
figlet -f big "INFO-TOOL" | lolcat
echo "[*] [*] [*] [*] [*] [*] [*] [*] [*] [*] [*] [*] [*] [*]" | lolcat
echo " [+] Bidang : Teknik Informatika v2.3" | lolcat
echo " [+] Github : github.com/VANSTR11/Zaid-alvan-"
echo " [+] Coded By : Zaid Alvan - Santri IT" | lolcat
echo ""
echo " [01] >> Belajar Python : Dasar sampe OOP"
echo " [02] >> Web Dev Roadmap : HTML, CSS, JS, PHP" | lolcat
echo " [03] >> Linux Command : 50 Perintah Wajib Termux"
echo " [04] >> Jaringan Dasar : IP, Subnet, Ping, Traceroute" | lolcat
echo " [05] >> Database MySQL : Latihan Query SELECT"
echo " [06] >> Git & Github : Push, Pull, Commit Tutorial" | lolcat
echo " [07] >> Cek IP Public : Lihat IP + lokasi lu"
echo " [08] >> Scan Port Sendiri : Cek port HP lu yg kebuka" | lolcat
echo " [09] >> Algoritma : Contoh Sorting & Searching"
echo " [10] >> Kumpulan Shortcut VSCode : Biar ngoding ngebut" | lolcat
echo " [11] >> Cyber Security Legal : Belajar jadi Bug Hunter"
echo ""
echo " [00] >> Keluar : Ctrl+C juga bisa"
echo ""
read -p " [INFO-TOOL]> Pilih menu: " pilih

case $pilih in
  1) clear; echo "PYTHON DASAR" | lolcat
     python -c "print('Halo Dunia'); a=5; b=3; print(f'5 + 3 = {a+b}')"
     echo "Materi: variabel, loop, function, file"
     read -p "Enter untuk lanjut..." ;;

  3) clear; echo "50 PERINTAH LINUX WAJIB" | lolcat
     echo "ls - List file | cd - P