#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   extrai-ips.sh
# Description:   Script para filtrar e extrair IPs de um arquivo de log,
#                contando suas ocorrências e gerando um relatório.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./extrai-ips.sh
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

echo "Iniciando processo de extração de IPs..."

grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" /var/log/syslog | sort | uniq -c | sort -nr > /home/vinig/DevOps/Atividade5/relatorioFinal.txt

echo "Processo Finalizado"
echo "Arquivo Relatório Final criado"

#END --------------------------------------------------------------------- #