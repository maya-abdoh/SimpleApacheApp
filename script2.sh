#!/bin/bash


WEBSITE_CODE_URL="https://github.com/mkassaf/SimpleApacheApp.git"
WEBSITE_PAGES_DIR="/var/www/SimpleApp"
CONFIG_FILE="/etc/apache2/sites-available/simpleApp.conf"
LOG_FILE="/var/log/install_$(date +'%Y-%m-%d').log"


apt-get update
apt-get install -y apache2


git clone $WEBSITE_CODE_URL /tmp/SimpleApacheApp


rm -rf $WEBSITE_PAGES_DIR
mkdir -p $WEBSITE_PAGES_DIR
cp -r /tmp/SimpleApacheApp/App/* $WEBSITE_PAGES_DIR


cp /tmp/SimpleApacheApp/simpleApp.conf $CONFIG_FILE


a2dissite 000-default
a2ensite simpleApp
systemctl reload apache2


curl -Is http://localhost | head -n 1 > $LOG_FILE
if [ "$(grep -Eo '[0-9]{3}' $LOG_FILE)" == "200" ]; then
  echo "Installation completed successfully." | tee -a $LOG_FILE
else
  echo "Installation failed. Check $LOG_FILE for details." | tee -a $LOG_FILE
fi


rm -rf /tmp/SimpleApacheApp
