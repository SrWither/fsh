#!/bin/sh

LSC() {
    read -p "Elija la carpeta donde quiere listar su contenido: " llsc
    ls $llsc
    shell
}