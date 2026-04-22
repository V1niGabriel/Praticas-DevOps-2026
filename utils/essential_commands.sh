#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   essential_commands.sh
# Description:   Demonstrates essential DevOps commands
# Site:          https://github.com/V1niGabriel/Praticas-DevOps-2026.git
# Written by:    [Vinicius Gabriel]
# Maintenance:   [Vinicius Gabriel]
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./essential_commands.sh
# ------------------------------------------------------------------------ #
# Repository:
#       Path: utils/essential_commands.sh
# ------------------------------------------------------------------------ #
# History:
#        v1.0 15/04/2026 - Vinicius:
#           - Initial version
# ------------------------------------------------------------------------ #

#!/bin/bash

# Variables --------------------------------------------------------------- #
readonly GREEN='\033[0;32m'
readonly BLUE='\033[0;34m'
readonly YELLOW='\033[1;33m'
readonly NC='\033[0m'

# Functions --------------------------------------------------------------- #

print_section() {
    # Cria um cabeçalho estilizado com as cores definidas
    echo -e "${BLUE}============================================================${NC}"
    echo -e "${YELLOW} ✨ $1 ${NC}"
    echo -e "${BLUE}============================================================${NC}"
}

print_command() {
    local cmd="$1"
    
    # Se a string do comando vier vazia, não faz nada
    if [ -z "$cmd" ]; then
        return
    fi

    echo ""
    echo -e "${GREEN}[ MODO DE TESTE ]${NC}"
    
    # Loop de menu interativo para testar o comando
    while true; do
        read -p "Deseja testar o comando '$cmd' agora? (s/n): " choice
        case "$choice" in
            s|S )
                read -p "Digite os argumentos para '$cmd' (ou aperte Enter para rodar puro): " args
                echo -e "\n${YELLOW}>>> Executando: $cmd $args ${NC}"
                
                # O comando eval executa a string montada no terminal
                eval "$cmd $args"
                
                echo -e "${YELLOW}<<< Fim da execução${NC}\n"
                break
                ;;
            n|N )
                echo -e "Pulando o teste...\n"
                break
                ;;
            * )
                echo -e "${YELLOW}Por favor, digite 's' para sim ou 'n' para não.${NC}"
                ;;
        esac
    done
    
    # Pausa antes de ir para a próxima seção
    echo -e "${GREEN}Pressione [ENTER] para ir para o próximo comando...${NC}"
    read -r
    clear
}

# Main Code --------------------------------------------------------------- #

clear
print_section "ESSENTIAL DEVOPS COMMANDS DEMO"
echo "Bem-vindo ao tutorial interativo de comandos DevOps!"
echo "Pressione [ENTER] para começar."
read -r
clear

# 1. Comando pwd
print_section "1. pwd - Print Working Directory"
echo "   Descrição: Mostra o diretório atual"
echo "   Help: pwd --help"
echo "   Exemplo:"
echo "   Diretório atual: $(pwd)"
print_command "pwd"

# 2. Comando date
print_section "2. date - Display date and time"
echo "   Descrição: Exibe ou define data e hora do sistema"
echo "   Help: date --help"
echo "   Exemplo:"
echo "   Data atual: $(date)"
echo "   Data formatada: $(date '+%Y-%m-%d %H:%M:%S')"
print_command "date"

# 3. Comando cat
print_section "3. cat - concatenate"
echo "Descrição: permite criar, unir e exibir arquivos no formato padrão de tela."
echo "Help: cat --help"
echo "Exemplo:"
echo "cat > arquivo.txt -> serve para criar arquivos"
echo "cat fonte.txt fonte2.txt > destino.txt -> concatenar arquivos"
echo "cat arquivo.txt -> ler o conteúdo e mostrar na tela"
print_command "cat"

# 4. Comando touch
print_section "4. touch (tocar)"
echo "Descrição: criar arquivos vazios e atualizar os carimbos de data/hora para o horário atual"
echo "Help: touch --help"
echo "Exemplo: touch arquivo.txt"
print_command "touch"

# 5. Comando grep
print_section "5. grep (filtrar)"
echo "Descrição: filtra as linhas de um determinado arquivo procurando por uma expressão regular como padrão"
echo "Help: grep --help"
echo "Exemplo: grep uira /etc/passwd"
print_command "grep"

# 6. Comando curl
print_section "6. curl (transferência de dados)"
echo "Descrição: ferramenta de linha de comando que serve para transferir dados de ou para um servidor usando URLs (HTTP, FTP, etc.)"
echo "Help: curl --help"
echo "Exemplo: curl exemplo-de-url.com"
print_command "curl"

# 7. Comando gzip
print_section "7. gzip (compactação)"
echo "Descrição: compacta arquivos para reduzir seu tamanho e economizar espaço em disco (adiciona a extensão .gz)."
echo "Help: gzip --help"
echo "Exemplo:"
echo "gzip arquivo.txt -> compacta o arquivo gerando um arquivo.txt.gz"
print_command "gzip"

# 8. Comando chmod
print_section "8. chmod (mudar permissões)"
echo "Descrição: altera as permissões de leitura, gravação e execução de arquivos e diretórios."
echo "Help: chmod --help"
echo "Exemplo:"
echo "chmod +x script.sh -> adiciona permissão de execução ao arquivo script.sh"
print_command "chmod"

# 9. Comando pgrep
print_section "9. pgrep (buscar processos)"
echo "Descrição: procura os IDs de processos (PIDs) em execução com base no nome do programa."
echo "Help: pgrep --help"
echo "Exemplo:"
echo "pgrep nginx -> retorna o PID(s) do processo nginx rodando no momento"
print_command "pgrep"

# 10. Comando ps
print_section "10. ps (status de processos)"
echo "Descrição: exibe informações e o status dos processos que estão ativos no sistema no momento."
echo "Help: ps --help"
echo "Exemplo:"
echo "ps aux -> lista de forma detalhada todos os processos em execução no sistema"
print_command "ps"

# 11. Comando df
print_section "11. df (espaço livre em disco)"
echo "Descrição: mostra a quantidade de espaço livre e usado nas partições e sistemas de arquivos do sistema."
echo "Help: df --help"
echo "Exemplo:"
echo "df -h -> exibe o uso do disco em um formato de fácil leitura para humanos (MB, GB)"
print_command "df"

# 12. Comando du
print_section "12. du (uso de disco por diretório/arquivo)"
echo "Descrição: estima e exibe o tamanho do espaço em disco consumido por arquivos e diretórios específicos."
echo "Help: du --help"
echo "Exemplo:"
echo "du -sh /var/log -> mostra o tamanho total acumulado do diretório /var/log"
print_command "du"

# Cleanup
print_section "TUTORIAL CONCLUÍDO!"
echo "Obrigado por usar o guia de comandos DevOps."
echo ""
# ------------------------------------------------------------------------ #
# END #