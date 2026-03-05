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
echo "Starting Jexactyl Migration Installation Process"
sleep 2
# LocalToNet Codes
echo "Checking Root Permission"

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run this script as root (sudo)"
  exit 1
fi

echo "Done Checking Root Permission ✅"
sleep 2

echo "Jexactyl Migration Installing Process Has Been Started ✨"

echo "Panel Has Been Stopped 🛑"

cd /var/www/pterodactyl
php artisan down
echo "Downloading Jexactyl Panel"
curl -L -o panel.tar.gz https://github.com/jexactyl/jexactyl/releases/latest/download/panel.tar.gz
tar -xzvf panel.tar.gz && rm -f panel.tar.gz
chmod -R 755 storage/* bootstrap/cache
composer require asbiin/laravel-webauthn
composer install --no-dev --optimize-autoloader
php artisan optimize:clear
php artisan migrate --seed --force
chown -R www-data:www-data /var/www/pterodactyl/*
php artisan queue:restart
php artisan up
if [ $? -ne 0 ]; then
  echo "❌ Jexactyl installation failed"
  exit 1
fi

echo "Jexactyl Installation Completed Successfully ✅"
