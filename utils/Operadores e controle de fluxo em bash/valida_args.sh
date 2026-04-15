#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   verifica-argumentos.sh
# Description:   Script que exibe mensagem de erro e encerra caso o 
#                usuário não informe exatamente 3 argumentos.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./verifica-argumentos.sh arg1 arg2 arg3
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

if [[ $# -ne 3 ]]; then
  echo "Arquivo Encerrado pela quantidade de argumentos incoerente!"
  exit 1
  # echo "Verifica se finalizou!" <- Esta linha nunca será executada
else 
  echo "Argumentos Aceitos"
fi

#END --------------------------------------------------------------------- #