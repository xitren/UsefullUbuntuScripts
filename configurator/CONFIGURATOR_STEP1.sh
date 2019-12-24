ssh-keygen -f ~/.ssh/id_ecdsa -t ecdsa -b 521
ssh-copy-id -i ~/.ssh/id_ecdsa sdwayne@192.168.55.2
cd ../server
ssh 'sdwayne@192.168.55.2' "mkdir server"
scp -vr * 'sdwayne@192.168.55.2:~/server'
ssh 'sdwayne@192.168.55.2' "ls -al ~/"
#sdwayne ALL=(ALL) NOPASSWD:ALL
ssh -t 'sdwayne@192.168.55.2' "sudo nano /etc/sudoers"
ssh -t 'sdwayne@192.168.55.2' "cd server && sh DEPLOY_ALL.sh"
ssh -t 'sdwayne@192.168.55.2' "sudo reboot now"
