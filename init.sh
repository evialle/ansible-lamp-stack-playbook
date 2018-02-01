#!/bin/sh

apt update
apt -y dist-upgrade
apt install -y unzip fail2ban asterisk apache2 php mysql-server libapache2-mod-php php-mysql php-curl php-gd php-intl php-json php-mbstring php-mcrypt php-xml php-zip php-mcrypt xcache

rm -rf /var/www/html

#Installation de fail2ban


#Insitallation de vtiger

wget https://sourceforge.net/projects/vtigercrm/files/vtiger%20CRM%207.0.1/Core%20Product/vtigercrm7.0.1.tar.gz
tar -zxvf vtigercrm7.0.1.tar.gz
mv vtigercrm7.0.1 /var/www/crm

#Inisitalion de wordpress
wget https://fr.wordpress.org/wordpress-4.9.2-fr_FR.zip
unzip wordpress-4.9.2-fr_FR.zip
mv wordpress-4.9.2-fr_FR /var/www/wordpress