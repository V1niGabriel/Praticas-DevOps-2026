#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   sistema-validacao.sh
# Description:   Script interativo com menu para validação avançada de 
#                E-mail, CPF (cálculo matemático) e Data.
# Site:          git
# Written by:    Vinicius Gabriel
# Maintenance:   Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./sistema-validacao.sh
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

# ==========================================
# Função para validar E-mail
# ==========================================
valida_email() {
    local email="$1"
    # Expressão regular básica para formato de e-mail
    if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
        echo "✅ Válido: O formato do e-mail está correto."
    else
        echo "❌ Inválido: Formato de e-mail incorreto. O padrão esperado é nome@dominio.com."
    fi
}

# ==========================================
# Função para validar CPF (Cálculo Matemático)
# ==========================================
valida_cpf() {
    local cpf="$1"
    
    # Remove pontos e traços, deixando apenas números
    cpf=$(echo "$cpf" | tr -d '.-')

    # Verifica se contém exatamente 11 números
    if [[ ! "$cpf" =~ ^[0-9]{11}$ ]]; then
        echo "❌ Inválido: O CPF deve conter exatamente 11 números."
        return
    fi

    # Verifica se todos os números são iguais (ex: 111.111.111-11)
    if [[ "$cpf" =~ ^([0-9])\1{10}$ ]]; then
        echo "❌ Inválido: O CPF não pode ter todos os dígitos repetidos."
        return
    fi

    # Validação do 1º dígito verificador
    local soma=0
    for i in {0..8}; do
        soma=$((soma + ${cpf:$i:1} * (10 - i)))
    done
    local resto=$((soma % 11))
    local digito1=$((resto < 2 ? 0 : 11 - resto))

    if [[ ${cpf:9:1} -ne $digito1 ]]; then
        echo "❌ Inválido: O primeiro dígito verificador do CPF está incorreto."
        return
    fi

    # Validação do 2º dígito verificador
    soma=0
    for i in {0..9}; do
        soma=$((soma + ${cpf:$i:1} * (11 - i)))
    done
    resto=$((soma % 11))
    local digito2=$((resto < 2 ? 0 : 11 - resto))

    if [[ ${cpf:10:1} -ne $digito2 ]]; then
        echo "❌ Inválido: O segundo dígito verificador do CPF está incorreto."
        return
    fi

    echo "✅ Válido: O CPF informado é válido e matematicamente correto."
}

# ==========================================
# Função para validar Data
# ==========================================
valida_data() {
    local data_input="$1"
    
    # Verifica o formato DD/MM/AAAA usando regex
    if [[ ! "$data_input" =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]; then
        echo "❌ Inválido: Formato de data incorreto. O padrão esperado é DD/MM/AAAA."
        return
    fi

    # Extrai dia, mês e ano para o formato aceito pelo comando 'date' (AAAA-MM-DD)
    local dia=$(echo "$data_input" | cut -d'/' -f1)
    local mes=$(echo "$data_input" | cut -d'/' -f2)
    local ano=$(echo "$data_input" | cut -d'/' -f3)

    # Usa o comando nativo 'date' para checar se a data existe no calendário real
    if date -d "$ano-$mes-$dia" "+%Y-%m-%d" > /dev/null 2>&1; then
        echo "✅ Válido: A data informada existe no calendário."
    else
        echo "❌ Inválido: A data informada não existe (ex: 30 de fevereiro ou 31 de abril)."
    fi
}

#CODE 

# ==========================================
# Menu Interativo Principal
# ==========================================
while true; do
    echo ""
    echo "==================================="
    echo "      SISTEMA DE VALIDAÇÃO"
    echo "==================================="
    echo "1) Validar E-mail"
    echo "2) Validar CPF"
    echo "3) Validar Data"
    echo "4) Sair"
    echo "==================================="
    read -p "Escolha uma opção [1-4]: " opcao

    case $opcao in
        1)
            read -p "👉 Digite o e-mail: " dado
            valida_email "$dado"
            ;;
        2)
            read -p "👉 Digite o CPF (com ou sem pontuação): " dado
            valida_cpf "$dado"
            ;;
        3)
            read -p "👉 Digite a data (DD/MM/AAAA): " dado
            valida_data "$dado"
            ;;
        4)
            echo "Saindo do validador... Até mais!"
            exit 0
            ;;
        *)
            echo "⚠️ Opção inválida! Por favor, escolha um número de 1 a 4."
            ;;
    esac
done

#END --------------------------------------------------------------------- #