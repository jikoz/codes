!/usr/bin/env bash
set -e
# Colors
RESET="\e[0m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
PURPLE="\e[35m"
WHITE="\e[97m"
RESET="\e[0m"
BOLD="\e[1m"

# Watermark JikozYT
echo "JikozYT HvmPanel3.1 Installer"
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
# Options
echo ""
echo -e "${CYAN}1${RESET} ➤ Install HvmPanel3.1"
echo -e "${CYAN}2${RESET} ➤ Install HvmPanel Latest"
echo -e "${CYAN}3${RESET} ➤ Exit"
read -p "Select option [1-3] ➜ " opt

case $opt in
  1)
    echo "Started Installing Pterodactyl Panel ✨"
    sleep 1
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/DreamHost2ws/Vpanel3.1.git
    sudo apt install python3-pip -y
    cd Vpanel3.1
    pip3 install flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
    python3 hvm.py
    echo "Create Tunel And Connect It Into Your Vps With localhost:3000"
    echo -e "${GREEN}HvmPanel3.1 Has Been Installed Successfully${RESET}"
    ;;
  2)
docker run -d \
--name hvm-panel \
-p 5000:5000 \
--restart unless-stopped \
hopingboyz/hvm-panel:latest
echo -e "${GREEN}HvmPanel Latest Has Been Installed Successfully${RESET}"
  ;;
esac
