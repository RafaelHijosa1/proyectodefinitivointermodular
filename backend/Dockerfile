FROM php:8.0-apache

# Instala dependencias necesarias para las extensiones de PHP
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Configura el directorio de trabajo
WORKDIR /var/www/html

# Copia los archivos de la aplicación al contenedor
COPY . .

# Expone el puerto 80
EXPOSE 80
