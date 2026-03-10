#!/usr/bin/env bash
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
echo -e "${CYAN}2${RESET} ➤ Install HvmPanel5.1 (Latest)"
echo -e "${CYAN}3${RESET} ➤ Uninstall HvmPanel3.1"
echo -e "${CYAN}4${RESET} ➤ Exit"
read -p "Select option [1-4] ➜ " opt

case $opt in
  1)
    echo -e "${BLUE}${BOLD}Started Installing Hvm Panel3.1 ✨${RESET}"
    sleep 1
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/jikoz/hvmpanel.git
    sudo apt install python3-pip -y
    cd hvmpanel
    pip3 install flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
    python3 hvm.py
    ;;
  2)
    echo -e "${BLUE}${BOLD}Started Installing Hvm Panel5.1 (Latest) ✨${RESET}"
    sleep 1
    echo -e "${YELLOW}${BOLD}UPDATING PACKAGES ✨${RESET}"
    sleep 1
    sudo apt update
    echo -e "${YELLOW}${BOLD}INSTALLING GIT ✨${RESET}"
    sleep 1
    sudo apt install git -y
    echo -e "${YELLOW}${BOLD}INSTALLING UNZIP ✨${RESET}"
    sleep 1
    apt install unzip -y
    echo -e "${YELLOW}${BOLD}CLONING REPOSITORY ✨${RESET}"
    sleep 1
    git clone https://github.com/jikoz/hvm5.1.git
    echo -e "${YELLOW}${BOLD}INSTALLING PYTHON3 ✨${RESET}"
    sleep 1
    sudo apt install python3-pip -y
    echo -e "${YELLOW}${BOLD}UNZIPING HVM5.1 FILE ✨${RESET}"
    sleep 1
    unzip hvm5.1.zip
    echo -e "${YELLOW}${BOLD}OPENING HVM DIRECTORY ✨${RESET}"
    sleep 1
    cd hvm
    echo -e "${YELLOW}${BOLD}STARTING HVM PANEL WITH PYTHON3 ✨${RESET}"
    sleep 1
    python3 hvm.py
    ;;
  3)
   cd
   rm -rf hvmpanel
   pip3 uninstall -y flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
   echo -e "${GREEN}HvmPanel Has Been Removed Successfully${RESET}"
   ;;
  4)
   exit 0
   ;;
  *)
   echo -e "${RED}${BOLD}❌ INVALID OPTION CHOOSE BETWEEN 1-4${RESET}"
   sleep 2
   echo -e "${YELLOW}${BOLD}PRESS ENTER TO GO BACK TO MENU${RESET}"
   read -p ""
   clear
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
echo -e "${CYAN}2${RESET} ➤ Install HvmPanel5.1 (Latest)"
echo -e "${CYAN}3${RESET} ➤ Uninstall HvmPanel3.1"
echo -e "${CYAN}4${RESET} ➤ Exit"
read -p "Select option [1-4] ➜ " opt

case $opt in
  1)
    echo -e "${BLUE}${BOLD}Started Installing Hvm Panel3.1 ✨${RESET}"
    sleep 1
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/jikoz/hvmpanel.git
    sudo apt install python3-pip -y
    cd hvmpanel
    pip3 install flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
    python3 hvm.py
    ;;
  2)
    echo -e "${BLUE}${BOLD}Started Installing Hvm Panel5.1 (Latest) ✨${RESET}"
    sleep 1
    echo -e "${YELLOW}${BOLD}UPDATING PACKAGES ✨${RESET}"
    sleep 1
    sudo apt update
    echo -e "${YELLOW}${BOLD}INSTALLING GIT ✨${RESET}"
    sleep 1
    sudo apt install git -y
    echo -e "${YELLOW}${BOLD}INSTALLING UNZIP ✨${RESET}"
    sleep 1
    apt install unzip -y
    echo -e "${YELLOW}${BOLD}CLONING REPOSITORY ✨${RESET}"
    sleep 1
    git clone https://github.com/jikoz/hvm5.1.git
    echo -e "${YELLOW}${BOLD}INSTALLING PYTHON3 ✨${RESET}"
    sleep 1
    sudo apt install python3-pip -y
    echo -e "${YELLOW}${BOLD}UNZIPING HVM5.1 FILE ✨${RESET}"
    sleep 1
    unzip hvm5.1.zip
    echo -e "${YELLOW}${BOLD}OPENING HVM DIRECTORY ✨${RESET}"
    sleep 1
    cd hvm
    echo -e "${YELLOW}${BOLD}STARTING HVM PANEL WITH PYTHON3 ✨${RESET}"
    sleep 1
    python3 hvm.py
    ;;
  3)
   cd
   rm -rf hvmpanel
   pip3 uninstall -y flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
   echo -e "${GREEN}HvmPanel Has Been Removed Successfully${RESET}"
   ;;
  4)
   exit 0
   ;;
  *)
   echo -e "${RED}${BOLD}❌ INVALID OPTION CHOOSE BETWEEN 1-4${RESET}"
   sleep 2
   echo -e "${YELLOW}${BOLD}PRESS ENTER TO GO BACK TO MENU${RESET}"
   read -p ""
   clear
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
echo -e "${CYAN}2${RESET} ➤ Install HvmPanel5.1 (Latest)"
echo -e "${CYAN}3${RESET} ➤ Uninstall HvmPanel3.1"
echo -e "${CYAN}4${RESET} ➤ Exit"
read -p "Select option [1-4] ➜ " opt
   ;;
esac
