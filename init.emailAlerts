#!/bin/bash

sudo apt install -y ssmtp
sudo -s <<< 'echo "root=wacrochester@gmail.com" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "mailhub=smtp.gmail.com:587" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "hostname=username@gmail.com" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "UseSTARTTLS=YES" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "AuthUser=wacrochester@gmail.com" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "AuthPass=password" >> /etc/ssmtp/ssmtp.conf'
sudo -s <<< 'echo "FromLineOverride=yes" >> /etc/ssmtp/ssmtp.conf'

sudo -s <<< 'echo "root:$user@$hostname:smtp.gmail.com" >> /etc/ssmtp/revaliases'


echo "Test message from Linux server using ssmtp" | sudo ssmtp -vvv wacrochester@gmail.com

echo "Check Email: wacrochester@gmail.com"; firefox https://gmail.com
