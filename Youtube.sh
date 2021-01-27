#!/bin/sh

youtube() {

  while true; do
    read -p "¿Que tipo de video te gusta mas? (Juegos/Música)" vid
    case $vid in
      Juegos ) echo "Genial, que buen gusto!";;
      Musica ) echo "Me encanta la música!";;
      * ) echo "coloca una opción valida"; youtube;;
      esac
  done
  }
  youtube
