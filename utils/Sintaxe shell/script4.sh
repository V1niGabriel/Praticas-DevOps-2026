#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   exibe-valores.sh
# Description:   Script que solicita dois valores ao usuário e os exibe 
#                na tela.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./exibe-valores.sh
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

read -p "Digite um valor: " valor1
read -p "Digite outro valor: " valor2

echo "Os valores digitados são $valor1 e $valor2"

#END --------------------------------------------------------------------- #
