#!/data/data/com.termux/files/usr/bin/bash
# Script Kandang Alvan v1.0

clear
pkg install figlet -y > /dev/null 2>&1
figlet -f slant "Kandang Alvan" | lolcat
echo "Ayam Kampung & Lele Segar" | lolcat
echo "=========================" 
echo "1. Lihat Harga"
echo "2. Hubungi via WA"
echo "3. Buka Website"
echo "4. Keluar"
echo "========================="
read -p "Pilih 1-4: " pilih

if [ $pilih = 1 ]; then
    echo "Ayam Kampung: Rp 70.000/ekor"
    echo "Lele Segar: Rp 28.000/kg"
elif [ $pilih = 2 ]; then
    termux-open-url "https://wa.me/6281234567890?text=Saya%20mau%20pesan"
elif [ $pilih = 3 ]; then
    termux-open-url "https://vanstr11.github.io"
else
    echo "Barakallah bro" | lolcat
fi