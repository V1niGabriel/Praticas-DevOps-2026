#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   info-usuario.sh
# Description:   Script que exibe o nome do usuário atual e depois 
#                mostra seu UID e grupos.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./info-usuario.sh
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

echo "Usuário Atual:"
who

echo

echo "Informações de UID e grupos:"
id

#END --------------------------------------------------------------------- #