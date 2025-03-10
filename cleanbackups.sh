#!/bin/bash

# Directorios de backups
BACKUP_DIRS=("/backups/frontend" "/backups/backend" "/backups/db")

# Días de retención (eliminar backups de más de 30 días)
RETENTION_DAYS=30

# Eliminar backups antiguos
for DIR in "${BACKUP_DIRS[@]}"; do
    find $DIR -type f -mtime +$RETENTION_DAYS -exec rm {} \;
done
