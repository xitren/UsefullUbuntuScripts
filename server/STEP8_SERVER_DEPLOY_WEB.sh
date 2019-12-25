rm -rf ~/html
git clone https://github.com/xitren/CV.git ~/html
sudo rm -rf /var/www/html/
sudo mkdir /var/www/html
sudo cp -r ~/html/* /var/www/html/
