FROM php:8.3-apache

# cURL eklentisinin mevcut olduğunu doğrula
RUN php -r 'exit(extension_loaded("curl") ? 0 : 1);'

COPY . /var/www/html/

EXPOSE 80
