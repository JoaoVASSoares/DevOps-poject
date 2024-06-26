#!/bin/bash

# Adicionar todas as mudanças ao git
git add .

# Ler a mensagem do commit
echo "Digite a mensagem do commit: "
read message

# Fazer o commit com a mensagem fornecida
echo "Mensagem do commit: $message"
git commit -am "$message"

# Fazer push das mudanças para o repositório remoto
git push

# Executar comandos no servidor remoto via SSH
ssh joaovitoralmeidas@34.151.221.54 << EOF
    cd /home/joaovitoralmeidas/devOps/DevOps-poject/
    git pull
    npm run build
    pm2 restart 0
    sudo systemctl restart nginx
EOF
