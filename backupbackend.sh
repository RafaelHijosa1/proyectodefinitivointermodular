#!/bin/bash

# Directorio del backend
SOURCE_DIR="/home/rafa/proyectointermodular/backend"

# Directorio de backups
BACKUP_DIR="/home/rafa/proyectointermodular/backups/backend"

# Fecha y hora actual (para el nombre del archivo)
DATE=$(date +"%Y%m%d%H%M")

# Crear el directorio de backups si no existe
mkdir -p $BACKUP_DIR

# Crear el backup comprimido
tar -czvf $BACKUP_DIR/backend_backup_$DATE.tar.gz -C $SOURCE_DIR .
