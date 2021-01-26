#!/bin/sh

CD() {
    read -p "Nombre del directorio: " CD1
    cd $CD1
    shell
}