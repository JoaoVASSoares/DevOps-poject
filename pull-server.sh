#!/bin/bash

# Adicionar todas as mudanças ao git
git add .
echo "Mudanças adicionadas ao git"

# Ler a mensagem do commit
echo "Digite a mensagem do commit: "
read message

# Fazer o commit com a mensagem fornecida
echo "Mensagem do commit: $message"
git commit -am "$message"
echo "Commit realizado"

# Fazer push das mudanças para o repositório remoto
git push
echo "Push realizado"

# Executar comandos no servidor remoto via SSH
ssh joaovitoralmeidas@34.151.221.54 << 'EOF'
    cd /home/joaovitoralmeidas/devOps/DevOps-poject/
    echo "Diretório do projeto alterado"
    
    git pull
    echo "Repositório atualizado"
    
    npm run build
    echo "Build concluída"
    
    pm2 restart 0
    echo "PM2 reiniciado"
    
    sudo systemctl restart nginx
    echo "Nginx reiniciado"
EOF

echo "Script concluído"
