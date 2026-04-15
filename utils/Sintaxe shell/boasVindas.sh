#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   boas-vindas.sh
# Description:   Script de boas vindas que pergunta o nome do usuário, 
#                disciplina e semestre
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./boas-vindas.sh
# ------------------------------------------------------------------------ #
# Tested on:
#       Bash 4.2.46
# ------------------------------------------------------------------------ #
# History:        v1.0 15/04/2026, Vinicius Gabriel:
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

read -p "Qual seu nome? " nome_usuario
read -p "Qual disciplina está cursando? " disciplina
read -p "Qual o semestre? " semestre

echo "Olá, $nome_usuario! Bem vindo a disciplina de $disciplina no semestre $semestre"
date
echo "seu diretório é $(pwd)"

#END --------------------------------------------------------------------- #
