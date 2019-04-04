# ATUALIZANDO 
sudo apt update

# INSTALANDO DEPENDENCIAS GLOBAIS
sudo ./scripts/subscripts/install_node.sh 
sudo ./scripts/subscripts/install_pm2.sh

# INSTALANDO DEPENDENCIAS DO PROJETO
npm install
npm audit fix

# INICIANDO SERVICOS
node scripts/subscripts/configure_services.js
pm2 save
pm2 startup

echo "Execute o comando fornecido pelo pm2 acima!"