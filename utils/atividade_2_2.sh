#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   Atividade 2.2
# Description:   Script multifuncional de Manipulação de Arquivos
# Repository:    Laboratório DevOps Prática 2
# Written by:    Miguel Dias e Vinicius Gabriel
# Maintenance:   Miguel Dias e Vinicius Gabriel
# ------------------------------------------------------------------------ #
# Usage: ./Atividade 2.2.sh
# ------------------------------------------------------------------------ #
# Tested on: Ubuntu Server
# ------------------------------------------------------------------------ #
# History:       v1.0 $(date +"%d/%m/%Y"), Miguel - Initial version
# ------------------------------------------------------------------------ #
#VARIABLES --------------------------------------------------------------- #

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

#FUNCTIONS --------------------------------------------------------------- #

log_info() {
    echo -e "[$(date +"%Y-%m-%d %H:%M:%S")] [INFO] - $1"
}

log_error() {
    echo -e "[$(date +"%Y-%m-%d %H:%M:%S")] [ERRO] - $1"
}

# Função de pausa para o menu
pause() {
    read -p "Pressione [Enter] para continuar..."
}

# 1. Renomear em lote
rename_files() {
    read -p "Digite o diretório alvo (ex: use '.' para caso o alvo seja o diretório atual): " target_dir
    read -p "Digite a extensão atual (ex: txt): " ext_old
    read -p "Digite a nova extensão (ex: md): " ext_new

    if [ ! -d "$target_dir" ]; then
        log_error "O diretório '$target_dir' não existe."
        return
    fi

    count=0
    for file in "$target_dir"/*."$ext_old"; do
        if [ -f "$file" ]; then
            mv "$file" "${file%.$ext_old}.$ext_new" && ((count++))
        fi
    done

    if [ "$count" -gt 0 ]; then
        log_info "$count arquivos renomeados de .$ext_old para .$ext_new em '$target_dir'."
    else
        log_error "Nenhum arquivo .$ext_old encontrado em '$target_dir'."
    fi
}

# 2. Compactar diretório
compress_dir() {
    read -p "Digite o nome da pasta que deseja compactar: " target_dir
    if [ -d "$target_dir" ]; then
        tar -czf "${target_dir}_backup.tar.gz" "$target_dir" && \
        log_info "Diretório '$target_dir' compactado com sucesso em '${target_dir}_backup.tar.gz'!"
    else
        log_error "O diretório '$target_dir' não existe."
    fi
}

# 3. Descompactar arquivo
decompress_file() {
    read -p "Digite o nome do arquivo compactado (ex: backup.tar.gz): " target_file
    if [ -f "$target_file" ]; then
        tar -xzf "$target_file" && \
        log_info "Arquivo '$target_file' descompactado com sucesso!"
    else
        log_error "O arquivo '$target_file' não foi encontrado."
    fi
}

# 4. Alterar permissões em lote
change_permissions() {
    read -p "Digite o diretório alvo (ex: use '.' para caso o alvo seja o diretório atual): " target_dir
    read -p "Digite a extensão dos arquivos (ex: sh): " ext
    read -p "Digite a permissão desejada (ex: +x, 644, 755): " perm

    if [ ! -d "$target_dir" ]; then
        log_error "O diretório '$target_dir' não existe."
        return
    fi

    if ls "$target_dir"/*."$ext" 1> /dev/null 2>&1; then
        chmod "$perm" "$target_dir"/*."$ext" && \
        log_info "Permissão '$perm' aplicada aos arquivos .$ext em '$target_dir'."
    else
        log_error "Nenhum arquivo .$ext encontrado em '$target_dir'."
    fi
}

#CODE -------------------------------------------------------------------- #

while true; do
    clear
    echo "================================================="
    echo "       FUNÇÕES DE MANIPULAÇÃO DE ARQUIVOS        "
    echo "================================================="
    echo "1. Renomear arquivos em lote (alterar extensão)"
    echo "2. Compactar diretório (tar.gz)"
    echo "3. Descompactar arquivo (tar.gz)"
    echo "4. Alterar permissões em lote"
    echo "0. Sair"
    echo "================================================="
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            echo "--- Renomear em Lote ---"
            rename_files
            pause
            ;;
        2)
            echo "--- Compactar Diretório ---"
            compress_dir
            pause
            ;;
        3)
            echo "--- Descompactar Arquivo ---"
            decompress_file
            pause
            ;;
        4)
            echo "--- Alterar Permissões ---"
            change_permissions
            pause
            ;;
        0)
            log_info "Encerrando o Menu..."
            exit 0
            ;;
        *)
            log_error "Opção inválida! Tente novamente."
            pause
            ;;
    esac
done

#END --------------------------------------------------------------------- #
