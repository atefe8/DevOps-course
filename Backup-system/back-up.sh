#!/bin/bash

BACKUP_DIR="/home/atefe/backupFile"
BACKUP_FILE="/home/atefe/backup-$(date +%Y-%m-%d).tar.gz"

tar -czf "$BACKUP_FILE" -C "$BACKUP_DIR" .

echo "Backup created: $BACKUP_FILE"

