mkdir ~/crontab_save/
rm -fv ~/auto_check_crontab.sh ~/crontab_save/crontab
cat /etc/crontab > ~/crontab_save/crontab

echo 'cat /etc/crontab > ~/crontab_save/new' >> ~/auto_check_crontab.sh
echo 'DIFF=$(diff ~/crontab_save/new ~/crontab_save/crontab)' >> ~/auto_check_crontab.sh
echo 'if [ "$DIFF" != "" ]; then' >> ~/auto_check_crontab.sh
echo '	echo "Crontab has changed, sending mail!"' >> ~/auto_check_crontab.sh
echo '	sudo sendmail xitren@ya.ru < ~/mail/mail_crontab.txt' >> ~/auto_check_crontab.sh
echo '	rm ~/crontab_save/crontab' >> ~/auto_check_crontab.sh
echo '	mv ~/crontab_save/new ~/crontab_save/crontab' >> ~/auto_check_crontab.sh
echo 'else' >> ~/auto_check_crontab.sh
echo '	echo "No changes on crontab!"' >> ~/auto_check_crontab.sh
echo 'fi' >> ~/auto_check_crontab.sh

( crontab -l | grep -v -F "sh ~/auto_check_crontab.sh" ; echo "*/5  *    * * *   root    sh ~/auto_check_crontab.sh" ) | crontab -
crontab -l