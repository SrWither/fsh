#!/bin/sh

#Colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

. wine.sh
. CD.sh
. MKDIR.sh
. RM.sh
. LSC.sh
. BANNER.sh
. NVIM.sh

trap ctrl_c INT

ctrl_c() {
    echo "Vuelve pronto!"
    exit 1
}

shell() {
    while true; do
        echo -e "${redColour}$USER@$(hostname)${endColour} ${yellowColour}>>${endColour} ${greenColour}$PWD${endColour} ${yellowColour}>>${endColour} "
        read -p "> " int1
        case $int1 in
            ls ) ls; shell;;
            nvim ) NEOVIM;;
            secretway ) echo "SecretWay Suuuuuuu"; shell;;
            pwd ) pwd;;
            help ) echo "Lista de comandos: ls, pwd, cd, exit, nvim, wine, lsc, mkdir, clear"; shell;;
            cd ) CD;;
            lsc ) LSC;;
            mkdir ) MakeDirectory;;
            wine ) WINE;;
            rm ) RM;;
            clear ) clear; shell;;
            exit ) ctrl_c;;
            * ) echo "FSH: Comando no encontrado, Escribe help, para obtener la lista de comandos"; shell;;
        esac
    done
}

shell
