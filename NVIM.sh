#!/bin/sh

NEOVIM() {
    read -p "Nombre del archivo a editar: " NV
    nvim $NV
    shell
}
