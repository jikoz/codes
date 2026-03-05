#!/bin/bash

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

echo "Starting LocalToNet Installing Process ✨"

curl -fsSL https://localtonet.com/install.sh | sh

if [ $? -ne 0 ]; then
  echo "❌ LocaltoNet installation failed"
  exit 1
fi

echo "LocalToNet Installation Completed Successfully ✅"

# Authentication
read -p "👉 Enter your LocalToNet Auth Token: " LTN_TOKEN

if [ -z "$LTN_TOKEN" ]; then
  echo "❌ Token cannot be empty"
  exit 1
fi

localtonet --authtoken "$LTN_TOKEN"

if [ $? -ne 0 ]; then
  echo "❌ Token authentication failed"
  exit 1
fi

echo ""
echo "LocalToNet Has Been Successfully Installed ✅"
echo "Start Tunnels By Using"
echo "localtonet http 3000"
echo "localtonet tcp 25565"
