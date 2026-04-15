#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   par-ou-impar.sh
# Description:   Script que verifica se um número fornecido pelo usuário 
#                é par ou ímpar.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./par-ou-impar.sh
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

read -p "Digite um valor: " num
resto=$(( num % 2 ))

if [ "$resto" -eq 0 ]; then
  echo "Número é PAR!"
else 
  echo "Número é IMPAR!"
fi

#END --------------------------------------------------------------------- #