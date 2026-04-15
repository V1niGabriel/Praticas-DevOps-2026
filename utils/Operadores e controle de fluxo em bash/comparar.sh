#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   compara-numeros.sh
# Description:   Script que compara o primeiro número com o segundo e diz 
#                se é igual, maior ou menor.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./compara-numeros.sh
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

read -p "Escreva um número: " num1
read -p "Escreva outro número: " num2

if [ "$num1" -eq "$num2" ]; then
  echo "Números iguais!"
elif [ "$num1" -gt "$num2" ]; then
  echo "Primeiro número é maior!"
else 
  echo "O primeiro número é menor!"
fi

#END --------------------------------------------------------------------- #
