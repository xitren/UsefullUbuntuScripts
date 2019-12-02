rm -vf /etc/network/if-pre-up.d/bestiptables
cp ./bestiptables /etc/network/if-pre-up.d/bestiptables
sudo chmod 777 /etc/network/if-pre-up.d/bestiptables
sudo sh /etc/network/if-pre-up.d/bestiptables
sudo reboot