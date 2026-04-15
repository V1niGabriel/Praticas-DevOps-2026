#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   calcula-idade.sh
# Description:   Script que pergunta o nome da pessoa, ano de nascimento 
#                e ao final calcula a idade aproximada da pessoa.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./calcula-idade.sh
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

read -p "Qual é seu nome? " nome
read -p "Ano de Nascimento: " ano

ano_atual=$(date +%Y)
idade=$((ano_atual - ano))
echo "$nome, nasceu em $ano e tem $idade anos"

#END --------------------------------------------------------------------- #
