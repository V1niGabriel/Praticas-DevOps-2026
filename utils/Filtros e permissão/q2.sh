#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   compacta-logs.sh
# Description:   Script que busca no diretório /var/log todos os arquivos 
#                com extensão .log e os compacta em um arquivo .tar.gz.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./compacta-logs.sh
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

find /var/log -type f -iname "*.log" | tar -czvf arquivos-log-compactados.tar.gz -T -

#END --------------------------------------------------------------------- #