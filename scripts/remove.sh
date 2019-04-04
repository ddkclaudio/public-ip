pm2 delete all
pm2 flush
cd ..
sudo rm -rf qhistory-receiver/
sudo pm2 unstartup
echo "Execute o comando fornecido pelo pm2 acima!"
