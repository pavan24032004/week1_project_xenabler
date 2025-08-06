#!/bin/bash
SOURCE_DIR="/app"
BACKUP_DIR="/home/ubuntu/backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup created at $BACKUP_DIR/$BACKUP_FILE"
