#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   compara-strings.sh
# Description:   Script que recebe duas strings como argumentos e informa 
#                se são iguais ou diferentes.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./compara-strings.sh "texto1" "texto2"
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

if [[ "$1" == "$2" ]]; then
  echo "Os argumentos são iguais!"
else 
  echo "Os argumentos são diferentes!"
fi

#END --------------------------------------------------------------------- #
