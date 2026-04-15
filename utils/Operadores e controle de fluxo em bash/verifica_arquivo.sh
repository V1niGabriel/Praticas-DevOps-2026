#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   verifica-arquivo.sh
# Description:   Script que recebe um nome de arquivo como argumento e 
#                informa se é arquivo regular, diretório ou se não está vazio.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./verifica-arquivo.sh nome_do_arquivo_ou_pasta
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

if [ -f "$1" ]; then
  echo "Arquivo existe e é regular."
fi

if [ -d "$1" ]; then
  echo "É um diretório."
fi

if [ -s "$1" ]; then
  echo "O arquivo existe e não está vazio."
fi

#END --------------------------------------------------------------------- #