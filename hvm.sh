#!/bin/bash

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
# Hvm Installer
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
