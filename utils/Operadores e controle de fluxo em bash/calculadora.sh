#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   calculadora.sh
# Description:   Script que recebe três argumentos (número1, operador, 
#                numero2) na execução e exibe o resultado da operação.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./calculadora.sh 5 + 5
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

resultado=$(( $1 $2 $3 ))
echo "$1 $2 $3 = $resultado"

#END --------------------------------------------------------------------- #
