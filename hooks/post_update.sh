#!/bin/bash

# Path to your backup script
BACKUP_SCRIPT="$HOME/scripts/buku-backup.sh"

# Check if the backup script exists and is executable
if [ -x "$BACKUP_SCRIPT" ]; then
    # Run the backup script
    "$BACKUP_SCRIPT"
else
    echo "Backup script not found or not executable!"
    exit 1
fi
