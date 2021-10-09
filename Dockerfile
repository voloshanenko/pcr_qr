FROM nginx

EXPOSE 80

COPY release/default.conf /etc/nginx/conf.d/default.conf
COPY release /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
