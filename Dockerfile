# Dockerfile
FROM php:7.2-alpine

RUN apk update && \
    docker-php-ext-install pdo_mysql

RUN curl -o composer-setup.php https://getcomposer.org/installer \
 && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

WORKDIR /www
CMD php -S 0.0.0.0:8000 -t public
