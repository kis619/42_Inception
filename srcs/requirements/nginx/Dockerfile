FROM alpine:3.15

RUN apk --update add nginx openssl && rm -rf /var/cache/apk/*

RUN sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt
    -subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=kmilchev"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443


# Then include daemon off in the dockerfile
# to let the nginx run in the foreground and not halt the nginx.

# CMD [“nginx”, “-g”, “daemon off;”]
ENTRYPOINT ["nginx", "-g", "daemon off;"]