FROM alpine:3.16.2

RUN apk --update add nginx openssl && rm -rf /var/cache/apk/*

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=kmilchev"

# COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# EXPOSE 443


