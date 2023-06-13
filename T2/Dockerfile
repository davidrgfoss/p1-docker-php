FROM php:7.4-apache-bullseye
MAINTAINER davidrgfoss "davidrg@davidrgfoss.com"
RUN apt-get update && apt-get upgrade -y && apt install mariadb-client -y && docker-php-ext-install mysqli pdo pdo_mysql
COPY bookmedik /var/www/html/
COPY mkbd.sh /opt/
RUN chmod +x /opt/mkbd.sh
CMD ["/opt/mkbd.sh"]
