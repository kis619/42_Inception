FROM debian:buster

RUN apt-get update \
    && apt-get install -y \
    mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./conf/initdb.sql /var/www/initdb.sql

RUN service mysql start \
    && mysql < /var/www/initdb.sql \
    && rm -f /var/www/initdb.sql

EXPOSE 3306

CMD ["mysqld"]