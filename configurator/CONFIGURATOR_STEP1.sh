ssh-keygen -f ~/.ssh/id_ecdsa -t ecdsa -b 521
ssh-copy-id -i ~/.ssh/id_ecdsa sdwayne@192.168.55.2
cd ../server
ssh 'sdwayne@192.168.55.2' "mkdir server"
scp -vr * 'sdwayne@192.168.55.2:~/server'
ssh 'sdwayne@192.168.55.2' "ls -al ~/"
#sdwayne ALL=(ALL) NOPASSWD:ALL
ssh -t 'sdwayne@192.168.55.2' "sudo nano /etc/sudoers"
ssh -t 'sdwayne@192.168.55.2'
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP1_SERVER_INSTALLING.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo dos2unix *"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP2_SERVER_SSH_PUBKEY.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP3_SERVER_CHECK_CRONTAB.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP4_SERVER_AUTO_UPDATE.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP5_SERVER_SET_IPTABLE.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP6_SERVER_INSTALL_SSL.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP7_SERVER_SENTRY_CONFIGS.sh"
#ssh -t 'sdwayne@192.168.55.2' "cd server && sudo sh STEP8_SERVER_DEPLOY_WEB.sh"
#ssh -t 'sdwayne@192.168.55.2' "sudo reboot now"
