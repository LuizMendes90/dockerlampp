FROM ubuntu:latest

COPY xampp.run .

RUN apt-get update && apt-get install net-tools && chmod +x xampp.run && ./xampp.run

COPY crinfodeck /opt/lampp/htdocs/crinfodeck/

COPY lampp /etc/init.d/

COPY start.sh .

COPY mysql.sock /opt/lampp/var/mysql/

RUN chmod 777 /opt/lampp/var/mysql/mysql.sock && chmod +x /etc/init.d/lampp && /usr/sbin/update-rc.d lampp defaults

EXPOSE 80

CMD ["/start.sh"]

