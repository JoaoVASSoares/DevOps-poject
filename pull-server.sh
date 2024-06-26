#!/bin/bash
git add .
read message
echo "Mensagem do commit: "
git commit -am "$message"
git push
ssh joaovitoralmeidas@34.151.221.54 \
    'git -C /home/joaovitoralmeidas/devOps/DevOps-poject/ ' \
    'git pull && ' \
    'pm2 restart 0 && sudo systemctl restart nginx'
