FROM debian:buster

RUN apt-get update \
    && apt-get install -y \
    mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/entrypoint.sh /tmp/entrypoint.sh
COPY ./conf/initdb.sql /tmp/initdb.sql

EXPOSE 3306
CMD ["bash", "/tmp/entrypoint.sh"]