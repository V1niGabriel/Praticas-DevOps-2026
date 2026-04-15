#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   relatorio-disco.sh
# Description:   Script que mostra o espaço livre em disco e o tamanho do 
#                diretório /home em formato legível para humanos.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./relatorio-disco.sh
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

echo "Espaço livre no disco:"
df -h

echo ""

echo "Tamanho do diretório /home:"
du -sh /home

#END --------------------------------------------------------------------- #