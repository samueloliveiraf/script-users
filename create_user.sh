#!/bin/bash

# Função para criar usuários
criar_usuarios() {
    echo "Criando usuários..."
    useradd -m -s /bin/bash carlos
    useradd -m -s /bin/bash maria
    useradd -m -s /bin/bash joao
    useradd -m -s /bin/bash debora
    useradd -m -s /bin/bash sebastiana
    useradd -m -s /bin/bash roberto
    useradd -m -s /bin/bash josefina
    useradd -m -s /bin/bash amanda
    useradd -m -s /bin/bash rogerio
}

# Função para criar grupos
criar_grupos() {
    echo "Criando grupos..."
    groupadd GRP_ADM
    groupadd GRP_VEN
    groupadd GRP_SEC
}

# Função para criar diretórios
criar_diretorios() {
    echo "Criando diretórios..."
    mkdir /publico
    mkdir /adm
    mkdir /ven
    mkdir /sec
}

# Função para definir permissões
definir_permissoes() {
    echo "Definindo permissões..."
    chown root /publico
    chmod 777 /publico

    chown root:GRP_ADM /adm
    chmod 770 /adm

    chown root:GRP_VEN /ven
    chmod 770 /ven

    chown root:GRP_SEC /sec
    chmod 770 /sec
}

criar_usuarios
criar_grupos
criar_diretorios
definir_permissoes

echo "Provisionamento concluído."
