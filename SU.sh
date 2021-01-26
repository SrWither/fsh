#!/bin/sh

SU() {
    read -p "Nombre del usuario: " SUU
    su $SUU
}