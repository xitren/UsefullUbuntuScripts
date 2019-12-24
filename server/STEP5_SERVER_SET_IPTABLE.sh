rm -vf /etc/network/if-pre-up.d/iptable
sudo cp ./iptable /etc/network/if-pre-up.d/iptable
sudo chmod 777 /etc/network/if-pre-up.d/iptable
sudo sh /etc/network/if-pre-up.d/iptable
