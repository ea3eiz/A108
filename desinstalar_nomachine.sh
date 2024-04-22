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
                        sudo apt purge nomachine -s             
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                        DESINSTALANDO NOMACHINE                            "
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        sleep 2                    
                        sed -i "66c NOMACHINE=OFF" /home/pi/status.ini                        
                        sleep 3
                        sudo killall nomachine
