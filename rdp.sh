#!/bin/bash

# Watermark JikozYT
echo "JikozYT Rdp Installer"
sleep 2

# Banner
cat << "EOF"
██╗██╗██╗  ██╗ ██████╗ ███████╗██╗   ██╗████████╗
     ██║██║██║ ██╔╝██╔═══██╗╚══███╔╝╚██╗ ██╔╝╚══██╔══╝
     ██║██║█████╔╝ ██║   ██║  ███╔╝  ╚████╔╝    ██║   
██   ██║██║██╔═██╗ ██║   ██║ ███╔╝    ╚██╔╝     ██║   
╚█████╔╝██║██║  ██╗╚██████╔╝███████╗   ██║      ██║   
 ╚════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝
EOF
echo "╔══════════════════╗"
echo "║CODE MADE BY JIKOZYT ║"
echo "╚══════════════════╝"
sleep 2
# Rdp Installer
echo "Starting Rdp Installation Process"
sleep 2
# Rdp Codes
echo "Checking Root Permission"

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run this script as root (sudo)"
  exit 1
fi

echo "Done Checking Root Permission ✅"
sleep 2

sudo apt update && sudo apt upgrade -y

sudo apt install xfce4 xfce4-goodies xrdp -y

echo "startxfce4" > ~/.xsession
sudo chown $(whoami):$(whoami) ~/.xsession


sudo systemctl enable xrdp
sudo systemctl restart xrdp
sudo apt install firefox-esr -y
