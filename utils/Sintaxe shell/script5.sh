#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   info-ambiente.sh
# Description:   Script que exibe o usuário atual, o conteúdo do diretório 
#                home e o diretório de trabalho atual.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./info-ambiente.sh
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

echo "Usuário atual: $(users)"
echo "Diretório Home: $(ls /home)"
echo "Diretório Atual: $(pwd)"

#END --------------------------------------------------------------------- #
