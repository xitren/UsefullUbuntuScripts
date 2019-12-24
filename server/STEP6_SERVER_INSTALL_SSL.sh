sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/sdwayne.com.key -out /etc/ssl/certs/sdwayne.com.crt
sudo apachectl configtest
sudo a2enmod ssl
sudo a2ensite default-ssl
sudo systemctl restart apache2.service
sudo cp ssl_site.conf /etc/apache2/sites-available/ssl_site.conf
sudo a2dissite 000-default.conf
sudo a2ensite ssl_site.conf
sudo systemctl reload apache2

