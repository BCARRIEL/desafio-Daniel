# imagem default
FROM ubuntu:16.04

WORKDIR /var/www/html/

RUN apt-get update && apt-get install python-software-properties software-properties-common -y && \
    add-apt-repository ppa:nginx/stable && \
    apt-get update && apt-get install nginx -y && \
    rm -rf /var/lib/apt/lists/* && \
    chown www-data.www-data -R /var/www/html

WORKDIR /
COPY start.sh /
EXPOSE 80