sudo mkdir ~/.ssh
sudo nano ~/.ssh/authorized_keys
rm -fv ~/.ssh/ssdh_config
cp ./ssdh_config ~/.ssh/ssdh_config
sudo service ssh restart
sudo reboot