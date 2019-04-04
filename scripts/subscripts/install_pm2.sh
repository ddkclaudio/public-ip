# INSTALL
sudo npm install pm2 -g
pm2 install pm2-logrotate

# CONFIGURE
pm2 set pm2-logrotate:max_size 10M
pm2 set pm2-logrotate:compress true 
pm2 set pm2-logrotate:rotateInterval '* * * /1 * *'