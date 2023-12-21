# You can change this to a different version of WordPress available at
# https://hub.docker.com/_/wordpress
FROM wordpress:5.3.2-apache

# Install PHP 7.4
RUN apt-get update && apt-get install -y php7.4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install additional dependencies
RUN apt-get update && apt-get install -y magic-wormhole

# Set user and ownership
RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
