#!/bin/sh

WINE() {
    read -p "Que Orden de wine quiere ejecutar (cfg, file, console, regedit, exe): " WOP
    case $WOP in
        cfg ) winecfg; shell;;
        file ) winefile; shell;;
        console ) wineconsole; shell;;
        regedit ) regedit;;
        exe ) WINEXE;;
    esac
}

WINEXE() {
    read -p "Ponga el nombre de la apliación que desea ejecutar: " WIN
    wine $WIN
    shell
}
