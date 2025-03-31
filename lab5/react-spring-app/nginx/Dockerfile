FROM nginx:1.27.4-alpine

ARG NGINX_USER=nginxuser
ARG NGINX_PORT=80

RUN adduser -D ${NGINX_USER}
USER ${NGINX_USER}

EXPOSE ${NGINX_PORT}

CMD [ "nginx", "-g", "daemon off;" ]