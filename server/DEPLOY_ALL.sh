sudo sh STEP1_SERVER_INSTALLING.sh
sudo dos2unix *
pkgs='dos2unix git sudo vim nano iptables-persistent fail2ban sendmail apache2 portsentry'
if ! dpkg -s $pkgs >/dev/null 2>&1;
then
    echo "STEP1_SERVER_INSTALLING is failed"
else
    echo "STEP2_SERVER_SSH_PUBKEY"
    sudo sh STEP2_SERVER_SSH_PUBKEY.sh
    echo "STEP3_SERVER_CHECK_CRONTAB"
    sudo sh STEP3_SERVER_CHECK_CRONTAB.sh
    echo "STEP4_SERVER_AUTO_UPDATE"
    sudo sh STEP4_SERVER_AUTO_UPDATE.sh
    echo "STEP5_SERVER_SET_IPTABLE"
    sudo sh STEP5_SERVER_SET_IPTABLE.sh
    echo "STEP6_SERVER_INSTALL_SSL"
    sudo sh STEP6_SERVER_INSTALL_SSL.sh
    echo "STEP7_SERVER_SENTRY_CONFIGS"
    sudo sh STEP7_SERVER_SENTRY_CONFIGS.sh
    echo "STEP8_SERVER_DEPLOY_WEB"
    sudo sh STEP8_SERVER_DEPLOY_WEB.sh
    sudo reboot now
fi
