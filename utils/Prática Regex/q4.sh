#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   busca-erros.sh
# Description:   Script que procura pela palavra "ERROR" no syslog e 
#                salva as ocorrências em um arquivo de texto.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./busca-erros.sh
#
#       Para agendar no crontab (todos os dias à meia-noite):
#       1. Digite: crontab -e
#       2. Adicione a linha: 0 0 * * * /caminho/completo/busca-erros.sh
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

ARQUIVO_SAIDA="/home/vinig/DevOps/Atividade5/erros_.txt"

#FUNCTIONS

founderror() {
  # O $1 recebe o caminho do log que será analisado
  grep "ERROR" "$1" >> "$ARQUIVO_SAIDA"
}

#CODE 

echo "Iniciando a busca por erros no arquivo /var/log/syslog..."

# Chama a função passando o syslog como argumento
founderror "/var/log/syslog"

echo "Busca finalizada! Os erros foram anexados em $ARQUIVO_SAIDA"

#END --------------------------------------------------------------------- #