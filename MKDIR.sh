#!/bin/bash

MakeDirectory() {
    read -p "Coloque un nombre a su carpeta: " mk
    mkdir $mk
    shell
}