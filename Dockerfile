# VERSÃO DO PHP - 8.0-rc-fpm / 7.4-fpm / 5.6-fpm
FROM php:8.0-rc-fpm

RUN apt-get update -y && apt-get install -y libonig-dev libmcrypt-dev openssl

RUN docker-php-ext-install mysqli pdo mbstring

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app 

# TROCAR A PASTA DO BACKEND AQUI
COPY ./backend /app

RUN composer install

CMD php artisan serve --host=0.0.0.0 --port=8000

EXPOSE 8000