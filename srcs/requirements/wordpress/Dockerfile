FROM alpine:3.15

RUN apk --update add php8 php8-fpm php8-opcache php8-gd php8-zlib php8-curl php-mysqli

WORKDIR /var/www

# RUN chown www-data:www-data /var/www

RUN wget https://wordpress.org/latest.tar.gz

RUN tar -xzvf latest.tar.gz && rm latest.tar.gz

COPY ./conf/www.conf        /etc/php8/php-fpm.d/www.conf
COPY ./conf/wp-config.php   /var/www
COPY ./conf/entrypoint.sh   /var/www

EXPOSE 9000

ENTRYPOINT ['sh', '/var/www/entrypoint.sh']