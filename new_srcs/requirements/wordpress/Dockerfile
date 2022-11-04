FROM	debian:buster
RUN	apt-get update && apt-get install -y vim php php-common php-cli php-fpm php-json php-pdo php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath wget unzip mariadb-client

WORKDIR	/var/www

# usermod -u 1000 www-data --changes the uid of user
# chown --changes the user and group ownership of eachfile
# chown -R --do stuff recursively

RUN	usermod -u 1000 www-data \
    && wget https://wordpress.org/latest.zip \
    && chown www-data:www-data /var/www/latest.zip \
    && mkdir /run/php \
    && chown -R www-data:www-data /var/ \
    && wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod a+x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY	./conf/entrypoint.sh /tmp/entrypoint.sh
COPY	./conf/wp-config.php /tmp/wp-config.php
COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD	["bash", "/tmp/entrypoint.sh"]