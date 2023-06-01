#!/bin/bash

# ------------------------------------------------------------------
# [Jack] Casaos-installer
#          Description
# ------------------------------------------------------------------

VERSION=1.0
SUBJECT=casaos_installer
chmod +x casaos_installer.sh
echo "Ottimizzazione del sistema in corso..."
sudo apt-get update -y 
sudo apt-get upgrade -y

echo "Installazione di preload in corso..."
sudo apt install preload -y

echo "Rimozione dei pacchetti non necessari..."
sudo apt-get remove evolution-data-server evolution-data-server-common gnome-themes-extra gnome-themes-data libreoffice-gnome pix pix-data -y

echo "Ottimizzazione completata, avvio installazione Casaos..."
curl -fsSL https://get.casaos.io | sudo bash

echo "Installazione completata!"
