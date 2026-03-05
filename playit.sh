#!/bin/bash

# Watermark JikozYT
echo "JikozYT Playit Installer"
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
# One Click Playit Installer
echo "Starting Playit Installation Process"
sleep 2
# Playit Code
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.26/playit-linux-amd64
chmod +x playit-linux-amd64
./playit-linux-amd64
