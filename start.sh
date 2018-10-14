#!/bin/bash
service lampp start
chmod 777 -R /opt/lampp/var/
/opt/lampp/bin/mysql --socket="/opt/lampp/var/mysql/mysql.sock" -e "create database crinfodeck"
/opt/lampp/bin/mysql --socket="/opt/lampp/var/mysql/mysql.sock" crinfodeck -e "source /opt/lampp/htdocs/crinfodeck/crinfodeck.sql"
tail -f /start.sh
