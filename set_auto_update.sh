echo 'sudo apt-get update -y && sudo apt-get upgrade -y >> /var/log/update_script.log' >> ~/apt_update.sh
echo 'sudo reboot' >> ~/apt_update.sh
echo '0  4    * * 1   root    sh ~/apt_update.sh' | crontab
crontab -l