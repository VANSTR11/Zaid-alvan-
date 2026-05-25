#!/data/data/com.termux/files/usr/bin/bash

# Auto install - UDAH BENER SEMUA
if ! command -v lolcat &> /dev/null; then
    echo "Install tools informatika..."
    pkg update -y
    pkg install figlet ruby python nmap -y > /dev/null 2>&1
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
  3) clear; echo "ls cd pwd cp mv rm mkdir nano cat grep" | lolcat; read -p "Enter..." ;;
  4) clear; read -p "Domain: " d; ping -c 3 $d; read -p "Enter..." ;;
  5) clear; curl -s ipinfo.io | grep -E 'ip|city|country'; read -p "Enter..." ;;
  6) clear; echo "Scan localhost:"; nmap -F localhost; read -p "Enter..." ;;
  7) clear; echo "Belajar Legal: portswigger.net/web-security"; termux-open-url "https://portswigger.net/web-security"; read -p "Enter..." ;;
  0) exit ;;
  *) echo "Pilih 1-7" | lolcat; sleep 1 ;;
esac
done