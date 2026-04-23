#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   boas-vindas.sh
# Description:   criar um script que analise o arquivo de log e extraia as informações solicitadas abaixo. Cada extração deve ser salva em um arquivo dentro de um diretório 3 
# específico. Local no repositório: logs/regex_log_analyzer.sh 
# Estrutura de saída obrigatória:
# O script deve criar um diretório log_analysis_YYYYMMDD_HHMMSS/ contendo os seguintes arquivos:
# 1_unique_ips.txt - Lista de IPs únicos que acessaram o servidor
# 2_http_methods.txt - Métodos HTTP e quantidade de cada um
# 3_dangerous_methods.txt - Requisições com métodos DELETE e PUT
# 4_urls.txt - URLs requisitadas e contagem de acessos
# 5_top_ips.txt - IPs que mais fizeram requisições (top 10)
# report.txt - Relatório consolidado com todas as análises
#
# Site:          https://github.com/V1niGabriel/Praticas-DevOps-2026
# Written by:    Vinicius Gabriel e Miguel Oliveira
# Maintenance:   Vinicius Gabriel e Miguel Oliveira
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./boas-vindas.sh
# ------------------------------------------------------------------------ #
# Tested on:
#       Bash 4.2.46
# ------------------------------------------------------------------------ #
# History:        v1.0 22/04/2026, Vinicius Gabriel:
#                - start de program
#                - add bash commands
# ------------------------------------------------------------------------ #
# Thankfulness:  
#
#VARIABLES --------------------------------------------------------------- #
readonly GREEN='\033[0;32m'
readonly BLUE='\033[0;34m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m'
Data_Atual=$(date +%Y%m%d_%H%M%S)
Nome_Pasta="log_analysis_$Data_Atual"

#FUNCTIONS

print_string() {
  local str1="$1"
  local namefile="$2"

  echo -e "$str1 ${YELLOW} >> $namefile ${NC}"
}

print_section() {
  #criar uma linha vísivel para separar blocos de respostas
  echo -e "${BLUE}============================================================${NC}"
}

#MAIN CODE 

echo -e "\b${GREEN}[ Análise de Log Iniciada ]${NC}"

if [ ! -d "$Nome_Pasta" ]; then
  echo -e "\n${YELLOW}>>> criando pasta${NC}"
  mkdir "$Nome_Pasta"
  echo -e "${YELLOW}<<< pasta criada${NC}\n"
fi

# 1_unique_ips.txt - Lista de IPs únicos que acessaram o servidor
grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" apache.log | sort | uniq -c > ~/DevOps/pratica2/Praticas-DevOps-2026/logs/$Nome_Pasta/1_unique_ips.txt
print_string "Lista de IPs únicos que acessaram o servidor" "1_unique_ips.txt"
print_section

# 2_http_methods.txt - Métodos HTTP e quantidade de cada um
grep -E -o "\b(GET|POST|DELETE|PUT)\b" apache.log | sort | uniq -c | sort -nr > ~/DevOps/pratica2/Praticas-DevOps-2026/logs/$Nome_Pasta/2_http_methods.txt
print_string "Métodos HTTP e quantidade de cada um" "2_http_methods.txt" 
print_section

# 3_dangerous_methods.txt - Requisições com métodos DELETE e PUT
grep -E "\b(DELETE|PUT)\b" apache.log | sort > ~/DevOps/pratica2/Praticas-DevOps-2026/logs/$Nome_Pasta/3_dangerous_methods.txt
print_string "Requisições com métodos DELETE e PUT" "3_dangerous_methods.txt"
print_section

# 4_urls.txt - URLs requisitadas e contagem de acessos
grep -oP '"[A-Z]+ \K[^ ]+' apache.log | sort | uniq -c | sort -nr > ~/DevOps/pratica2/Praticas-DevOps-2026/logs/$Nome_Pasta/4_urls.txt
print_string "URLs requisitadas e contagem de acessos" "4_urls.txt"
print_section

# 5_top_ips.txt - IPs que mais fizeram requisições (top 10)
grep -E -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" apache.log | sort | uniq -c | sort -nr | head -n 10 > ~/DevOps/pratica2/Praticas-DevOps-2026/logs/$Nome_Pasta/5_top_ips.txt
print_string "IPs que mais fizeram requisições (top 10)" "5_top_ips.txt"
print_section

# 6_report.txt - Relatório consolidado com todas as análises
tail -n +1 "$Nome_Pasta"/[1-5]* > "$Nome_Pasta"/report.txt
print_string "Relatório consolidado com todas as análises" "report.txt \b"

#END --------------------------------------------------------------------- #
