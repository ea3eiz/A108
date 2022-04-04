#!/bin/bash
SCRIPTS_version=$(awk "NR==1" /home/pi/.config/autostart/version)
#Colores 
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
echo "${VERDE}"
echo " ******************************************************************************"
echo " *************************   ABRIENDO ircDDBGateway    ************************"
echo " ******************************************************************************"
sleep 2	
cd /home/pi/Desktop
sudo cp Abrir_ircDDB.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version; sudo sh Open_cerrar_ircDDB.sh'" /home/pi/Abrir_ircDDB.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICONO_IRCDDB_ON.png" /home/pi/Abrir_ircDDB.desktop
sed -i "10c Name[es_ES]=Cerrar ircDDB" /home/pi/Abrir_ircDDB.desktop
sed -i "1c D-STAR=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_ircDDB.desktop /home/pi/Desktop
sleep 1
sudo rm /home/pi/Abrir_ircDDB.desktop

sudo ircddbgateway -gui





