#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   manipula-diretorio.sh
# Description:   Script que cria um diretório, verifica se ele existe e 
#                está vazio, e em seguida o remove.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./manipula-diretorio.sh
# ------------------------------------------------------------------------ #
# Tested on:
#       Bash 4.2.46
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026, Vinicius:
#                - start de program
#                - add bash commands
# ------------------------------------------------------------------------ #
# Thankfulness:  
#
#VARIABLES --------------------------------------------------------------- #
#
#FUNCTIONS
#
#CODE 

mkdir projeto_novo
echo "Verificando se o diretório projeto_novo existe"
sleep 2

diretorio="projeto_novo"

if [ -d "$diretorio" ]; then
  echo "Diretório existe"
  sleep 2
  echo "Iniciando processo de verificação de arquivo na pasta $diretorio"
  
  if [ -z "$(ls -A "$diretorio")" ]; then
    echo "Pasta Vazia, removendo diretório"
    sleep 2
    rmdir "$diretorio"
    echo "Diretório removido!"
  fi
fi

#END --------------------------------------------------------------------- #