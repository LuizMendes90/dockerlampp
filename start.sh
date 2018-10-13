#!/bin/bash
service lampp start
chmod 777 -R /opt/lampp/var/
chmod 777 /opt/lampp/var/mysql/mysql.sock
/opt/lampp/bin/mysql -e "create database crinfodeck"
/opt/lampp/bin/mysql crinfodeck -e "source /opt/lampp/htdocs/crinfodeck/crinfodeck.sql"
tail -f /start.sh
