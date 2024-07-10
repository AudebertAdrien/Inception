FROM debian:bullseye

RUN apt-get update -y && apt upgrade -y && apt-get install nginx -y

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl/

COPY tools/nginx.key /etc/nginx/ssl/nginx.key
COPY tools/nginx.crt /etc/nginx/ssl/nginx.crt

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

