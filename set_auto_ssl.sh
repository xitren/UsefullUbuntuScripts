sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/rogerxxx.com.key -out /etc/ssl/certs/rogerxxx.com.crt
sudo nano /etc/apache2/sites-available/default-ssl.conf
sudo apachectl configtest
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl restart apache2.service
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/001-default.conf
sudo nano /etc/apache2/sites-available/001-default.conf
a2dissite 000-default.conf
a2ensite 001-default.conf
systemctl reload apache2