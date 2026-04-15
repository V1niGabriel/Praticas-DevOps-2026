#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   ordem-alfabetica.sh
# Description:   Script que recebe duas strings como argumentos e informa 
#                qual vem primeiro em ordem alfabética.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./ordem-alfabetica.sh "banana" "abacaxi"
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

if [[ "$1" < "$2" ]]; then
  echo "$1 vem primeiro em ordem alfabética."
else
  echo "$2 vem primeiro em ordem alfabética."
fi

#END --------------------------------------------------------------------- #
