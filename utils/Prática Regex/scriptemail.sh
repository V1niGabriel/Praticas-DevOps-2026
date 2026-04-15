#!/bin/bash

# Nome do arquivo de saída
ARQUIVO="emails.log"
# Quantidade de linhas para gerar (mude para 100000 se quiser algo realmente gigante)
LINHAS=5000

echo "Iniciando a geração de logs em $ARQUIVO..."

# Arrays para simular domínios e nomes
dominios=("gmail.com" "yahoo.com" "outlook.com" "empresa.com.br" "servidor.net")
nomes=("admin" "suporte" "contato" "vendas" "usuario" "teste" "root")

for ((i=1; i<=LINHAS; i++))
do
    # Gera uma string aleatória (o "lixo" do log)
    LIXO=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9 ' | fold -w 50 | head -n 1)
    
    # Decide aleatoriamente se insere um e-mail nesta linha (chance de 30%)
    if [ $(( $RANDOM % 10 )) -lt 3 ]; then
        NOME=${nomes[$RANDOM % ${#nomes[@]}]}
        DOM=${dominios[$RANDOM % ${#dominios[@]}]}
        EMAIL="$NOME$(( $RANDOM % 100 ))@$DOM"
        echo "LOG_DATA: $(date +%T) - INFO: $LIXO - USER: $EMAIL - STATUS: 200" >> $ARQUIVO
    else
        # Linha comum sem e-mail
        echo "LOG_DATA: $(date +%T) - DEBUG: $LIXO - STATUS: 404" >> $ARQUIVO
    fi
done

echo "Concluído! Arquivo $ARQUIVO gerado com sucesso."
