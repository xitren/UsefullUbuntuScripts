sudo mkdir .ssh
sudo vim .ssh/authorized_keys -> paste pub key 
sudo vim /etc/ssh/sshd_config (replace password autentification 'yes' to 'no')
sudo service ssh restart
sudo reboot