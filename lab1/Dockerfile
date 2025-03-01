FROM alpine:3.21.3

RUN apk --no-cache add nginx

COPY ./config /etc/nginx

RUN mkdir -p /var/www/html && chown -R nginx:nginx /var/www/html

WORKDIR /var/www/html

USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]