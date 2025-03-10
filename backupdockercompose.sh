#!/bin/bash

# Ruta del archivo docker-compose.yml
SOURCE_FILE="/home/rafa/proyectointermodular/docker-compose.yml"

# Directorio de backups
BACKUP_DIR="/home/rafa/proyectointermodular/backups/docker-compose"

# Fecha y hora actual (para el nombre del archivo)
DATE=$(date +"%Y%m%d%H%M")

# Crear el directorio de backups si no existe
mkdir -p $BACKUP_DIR

# Crear el backup del archivo docker-compose.yml
cp $SOURCE_FILE $BACKUP_DIR/docker-compose_backup_$DATE.yml
