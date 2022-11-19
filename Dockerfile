FROM php:8.1.0-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www/html

COPY --chown=www-data ./index.php /var/www/html/

CMD [ "php", "-S", "0.0.0.0:8000", "index.php" ]

EXPOSE 8000
