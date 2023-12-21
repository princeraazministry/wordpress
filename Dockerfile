FROM wordpress:php7.4-apache

# Install additional dependencies
RUN apt-get update && apt-get install -y magic-wormhole

# Set user and ownership
RUN usermod -s /bin/bash www-data
RUN chown www-data:www-data /var/www
USER www-data:www-data
