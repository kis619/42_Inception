FROM alpine:3.15

RUN apk --update add mariadb mariadb-client

COPY conf/initfile.sql /initfile.sql

COPY conf/my.cnf /my.cnf

COPY conf/init_db.sh /init_db.sh

EXPOSE 3306

ENTRYPOINT ["sh", "./init_db.sh"]