FROM alpine:3.15

# RUN apk --update add php8 php8-fpm php8-opcache php8-gd php8-zlib php8-curl php-mysqli

RUN apk update \
	&& apk add php php-common php-fpm php-json php-session php-mysqli

# WORKDIR /var/www

# RUN chown www-data:www-data /var/www

# RUN wget https://wordpress.org/latest.tar.gz

# RUN tar -xzvf latest.tar.gz && rm latest.tar.gz


ADD http://wordpress.org/latest.tar.gz /var/www/

RUN tar -xzf /var/www/latest.tar.gz -C /var/www/ && rm -rf /var/www/latest.tar.gz

RUN adduser -S nginx && addgroup -S nginx && adduser nginx nginx

COPY ./conf/www.conf        /etc/php7/php-fpm.d/www.conf
# COPY ./conf/wp-config.php   /var/www
COPY ./conf/entrypoint.sh   /var/www/entrypoint.sh

EXPOSE 9000

ENTRYPOINT ['sh', '/var/www/entrypoint.sh']