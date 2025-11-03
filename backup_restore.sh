#!/bin/bash
# Automated Backup Script

SOURCE="/home/user/documents"
DESTINATION="/home/user/backup_$(date +%F).tar.gz"

echo "Starting backup for $SOURCE"
tar -czf $DESTINATION $SOURCE

if [ $? -eq 0 ]; then
    echo "Backup Successful! File stored at $DESTINATION"
else
    echo "Backup Failed!"
fi

# Restore Command Example
# tar -xzf backup_2025-11-02.tar.gz -C /home/user/restore_folder