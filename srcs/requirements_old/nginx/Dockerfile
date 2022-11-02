FROM alpine:3.15

RUN apk --update add nginx openssl && rm -rf /var/cache/apk/*

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=kmilchev" \
    -keyout /etc/ssl/nginx-selfsigned.key \
    -out /etc/ssl/nginx-selfsigned.crt 

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443


# Then include daemon off in the dockerfile
# to let the nginx run in the foreground and not halt the nginx.

# CMD [“nginx”, “-g”, “daemon off;”]
ENTRYPOINT ["nginx", "-g", "daemon off;"]