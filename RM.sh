#!/bin/sh

RM() {
    read -p "Nombre del directorio o archivo: " RM1
    rm -r $RM1
    shell
}
