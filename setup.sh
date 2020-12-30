 
#!/bin/bash

echo "---- Iniciando instalacao do ambiente de Desenvolvimento PHP [EspecializaTI] ---"

echo "--- Atualizando lista de pacotes ---"
sudo apt-get update

echo "--- Definindo Senha padrao para o MySQL e suas ferramentas ---"

DEFAULTPASS="root"
sudo debconf-set-selections <<EOF
mysql-server	mysql-server/root_password password $DEFAULTPASS
mysql-server	mysql-server/root_password_again password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/app-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/mysql/admin-pass password $DEFAULTPASS
dbconfig-common	dbconfig-common/password-confirm password $DEFAULTPASS
dbconfig-common	dbconfig-common/app-password-confirm password $DEFAULTPASS
phpmyadmin		phpmyadmin/reconfigure-webserver multiselect apache2
phpmyadmin		phpmyadmin/dbconfig-install boolean true
phpmyadmin      phpmyadmin/app-password-confirm password $DEFAULTPASS 
phpmyadmin      phpmyadmin/mysql/admin-pass     password $DEFAULTPASS
phpmyadmin      phpmyadmin/password-confirm     password $DEFAULTPASS
phpmyadmin      phpmyadmin/setup-password       password $DEFAULTPASS
phpmyadmin      phpmyadmin/mysql/app-pass       password $DEFAULTPASS
EOF

echo "--- Instalando pacotes basicos ---"
sudo apt-get install software-properties-common vim curl python-software-properties git-core git --assume-yes


echo "--- Atualizando lista de pacotes ---"
sudo apt-get update

echo "--- Instalando MySQL, Phpmyadmin e alguns outros modulos ---"
sudo apt-get install mysql-server mysql-client phpmyadmin --assume-yes 

echo "--- Instalando PHP, Apache e alguns modulos ---"
sudo apt-get install php7.4 php7.4-common apache2 --assume-yes
sudo apt-get install php7.4-cli libapache2-mod-php7.4 php7.4-mysql php-memcached php7.4-dev php7.4-sqlite3 php*-mysql php-xml php-mbstring php7.4-curl php7.4-gd php7.4-json php7.4-mbstring zip unzip --assume-yes

echo "--- Habilitando o PHP 7.4 ---"
#sudo a2dismod php5
sudo a2enmod php7.4

echo "--- Habilitando mod-rewrite do Apache ---"
sudo a2enmod rewrite

echo "--- Reiniciando Apache ---"
sudo service apache2 restart

echo "--- Baixando e Instalando Composer ---"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Instale apartir daqui o que você desejar 
sudo apt-get install netconfig --assume-yes

echo "[OK] --- Ambiente de desenvolvimento concluido ---"
