# PARANDO OS SERVICOS
./scripts/stop.sh

# BACKUP DOS ARQUIVOS DE CONFIGURACAO 
cp -rf db/  ~/

# ATUALIZANDO O CODIGO
git reset --hard
git pull

# INSTALANDO DEPENDENCIAS DO PROJETO
npm install
npm audit fix

# RESTAURANDO ARQUIVOS DE CONFIGURACAO
cp -rf ~/db .

# REINICIANDO OS SERVICOS
./scripts/restart.sh