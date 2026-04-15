#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   filtra-log.sh
# Description:   Script que filtra um arquivo de log (ex: apache.log) por 
#                um código específico e exibe as 5 primeiras ocorrências.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./filtra-log.sh apache.log
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

if [ -z "$1" ]; then
  echo "Erro, você precisa informar o nome do arquivo"
  exit 1
fi

arquivo="$1"
termo="4786228.66"

echo "Pesquisando o termo $termo no arquivo $arquivo..."

grep -F "$termo" "$arquivo" | head -n 5

#END --------------------------------------------------------------------- #