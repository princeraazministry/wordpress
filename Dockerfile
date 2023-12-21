# You can change this to a different version of WordPress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:5.3.2-apache

# Update PHP version to 7.4
RUN sed -i 's/stretch/buster/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y php7.4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y magic-wormhole

RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
