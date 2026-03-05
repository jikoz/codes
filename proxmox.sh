#!/bin/bash
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
clear
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
# LocalToNet Installer
echo "Starting LocalToNet Installation Process"
sleep 2
# LocalToNet Codes
echo "Checking Root Permission"

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run this script as root (sudo)"
  exit 1
fi

echo "Done Checking Root Permission ✅"
sleep 2
# Domain
echo -e "${CYAN}${BOLD}▶ Setup Configuration${RESET}"
read -p $'\e[96m\e[1m Enter your domain (e.g., panel.example.com): \e[0m' DOMAIN
if [[ -z "$DOMAIN" ]]; then
    echo -e "${RED}${BOLD}✘ Error: Domain is required!${RESET}"
    exit 1
fi
echo -e "${GREEN}${BOLD}✓ Domain: ${WHITE}${DOMAIN}${RESET}\n"
echo ""
echo "Starting Proxmox Installing Process ✨"
sleep 2
clear
echo "Proxmox Code Credit Goes To HopingBoy"
sleep 2
docker run -itd \
  --name proxmoxve \
  --hostname pve \
  --privileged \
  --cgroupns=host \
  --security-opt apparmor=unconfined \
  --security-opt seccomp=unconfined \
  -v /sys/fs/cgroup:/sys/fs/cgroup:rw \
  -v /lib/modules:/lib/modules:ro \
  -v /dev/fuse:/dev/fuse \
  -v /sys/kernel/debug:/sys/kernel/debug \
  -p 8006:8006 \
  --restart unless-stopped \
  rtedpro/proxmox:9.0.11
  
if [ $? -ne 0 ]; then
  echo "❌ Proxmox installation failed"
  exit 1
fi

echo "Proxmox Installation Completed Successfully ✅"
echo -e "Your ProxmoxPanel Will Be Accessible From ${BLUE}${DOMAIN}${RESET}"
