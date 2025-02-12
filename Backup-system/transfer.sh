#!/bin/bash
REMOTE_SERVER="testuser"
REMOTE_SERVER_IP="172.21.241.74"
REMOTE_DIR="/usr/remote-backup"

BACKUP_DIR="/home/atefe"

GET_LATEST_BACKUP=$(ls -t "$BACKUP_DIR" | head -n1)

sudo scp "$BACKUP_DIR/$GET_LATEST_BACKUP" "$REMOTE_SERVER@$REMOTE_SERVER_IP:$REMOTE_DIR"

echo "tarnsfered successfully"
