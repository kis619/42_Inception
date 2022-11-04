FROM	debian:buster

RUN	apt-get update \
    && apt-get install -y \
    php7.3 wget php-mysqli php-fpm

COPY	./conf/entrypoint.sh /var/www/entrypoint.sh
COPY	./conf/wp-config.php /var/www/wp-config.php
COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# check if necessary
RUN chmod +x /var/www/entrypoint.sh

ENTRYPOINT [ "/var/www/entrypoint.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]