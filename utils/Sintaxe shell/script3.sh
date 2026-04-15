#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   gerador-senha.sh
# Description:   Script que solicita uma palavra-base e um número, gera 
#                uma senha e pergunta se deseja salvar em um arquivo.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./gerador-senha.sh
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

read -p "Escreva uma palavra base: " palavra
read -p "Escreva qualquer número: " numero

senha="${palavra}_${numero}"
echo "A senha gerada é: $senha"

read -p "Deseja salvar a senha (s/n)? " status

if [[ "$status" == "s" || "$status" == "S" ]]; then
    nome_arquivo="password.txt"
    
    echo "$senha" > "$nome_arquivo"
    echo "Operação concluída. Arquivo salvo como $nome_arquivo!"
else
    echo "Operação Cancelada. O resultado não foi salvo!"
fi

#END --------------------------------------------------------------------- #
