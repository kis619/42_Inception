FROM debian:buster

RUN apt-get update \
    && apt-get install -y \
    nginx \
    openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=kmilchev"

COPY ./conf/wordpress.conf /etc/nginx/sites-enabled/default

EXPOSE 443

# need to read again what the difference with ENTRYPOINT is
CMD ["nginx", "-g", "daemon off;"]

# Then include daemon off in the dockerfile
# to let the nginx run in the foreground and not halt the nginx.