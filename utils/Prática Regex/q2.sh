#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   extrai-emails.sh
# Description:   Script com uma função que recebe um arquivo como 
#                argumento e extrai todos os e-mails encontrados nele.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./extrai-emails.sh contatos.txt
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

extrai_emails() {
  # O $1 aqui refere-se ao primeiro argumento passado para a função
  grep -E -o "[a-zA-Z0-9_%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,3}" "$1" | sort
}

#CODE 

# Verifica se o usuário passou o arquivo como argumento para o script
if [ -z "$1" ]; then
  echo "Erro: Você precisa informar o nome do arquivo."
  exit 1
fi

echo "Extraindo e-mails do arquivo $1..."
echo "-----------------------------------"

# Chama a função passando o arquivo ($1 do script) como argumento
extrai_emails "$1"

#END --------------------------------------------------------------------- #