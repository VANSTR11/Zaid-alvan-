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
     echo "ls - List file | cd - Pindah folder | pwd - Lokasi sekarang"
     echo "cp - Copy | mv - Pindah | rm - Hapus | mkdir - Bikin folder"
     echo "nano - Edit file | cat - Baca file | grep - Cari teks"
     read -p "Enter..." ;;

  4) clear; echo "NETWORKING TOOL" | lolcat
     read -p "Masukkan domain/IP: " target
     echo "Ping ke $target:"; ping -c 4 $target
     read -p "Enter..." ;;

  7) clear; echo "INFO IP LU" | lolcat
     curl -s ipinfo.io | grep -E 'ip|city|region|country'
     read -p "Enter..." ;;

  8) clear; echo "SCAN PORT HP SENDIRI" | lolcat
     echo "Ini buat cek keamanan HP lu sendiri, bukan ngehack orang"
     nmap -F localhost
     read -p "Enter..." ;;

  11) clear; echo "BELAJAR CYBER SECURITY LEGAL" | lolcat
     echo "1. Platform: HackerOne, Bugcrowd, Intigriti"
     echo "2. Belajar: PortSwigger Web Security Academy - GRATIS"
     echo "3. Sertifikasi: CompTIA Security+, CEH"
     echo "Halal & gajinya 2 digit bro!"
     termux-open-url "https://portswigger.net/web-security"
     read -p "Enter..." ;;

  0 | 00) echo "Semangat ngoding bro, jadi IT yg berkah" | lolcat; exit ;;
  *) echo "Pilih 1-11 aja bro" | lolcat; sleep 1 ;;
esac
done