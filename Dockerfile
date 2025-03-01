FROM php:8.2

RUN apt-get update

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \ 
    && apt-get install -y nodejs

RUN npm install --global yarn

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN useradd -m webmaster
USER webmaster
