#!/bin/bash
clear
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

                        # Comprueba si NOMACHINE está instalado
                        estado_nomachine=$(awk "NR==66" /home/pi/status.ini)
                        if [ "$estado_nomachine" = 'NOMACHINE=ON' ];then
                        echo "\v\v\v\v\v\v"
                        echo "${ROJO}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                        NOMACHINE YA ESTÁ INSTALADO                       "
                        echo "                      NO PUEDES VOLVER A INSTALARLO                    "
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        sleep 4
                        else
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                         INSTALANDO NOMACHINE                            "
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        sleep 2  
                        wget https://download.nomachine.com/download/8.11/Raspberry/nomachine_8.11.3_3_armhf.deb
                        sudo dpkg -i nomachine_8.11.3_3_armhf.deb                                             
                        clear
                        
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                  SE HA INSTALADO NOMACHINE CON EXITO                    "
                        echo "***********************************************************************" 
                        echo "***********************************************************************"                      
                        sed -i "66c NOMACHINE=ON" /home/pi/status.ini                        
                        sleep 3
                        fi                       
                       

          
