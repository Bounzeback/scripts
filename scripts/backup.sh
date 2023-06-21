#!/bin/bash

# Backup file name
backup_file="monitor.log"

# Source and destination information
source_file="/var/log/auth.log"
destination_server="172.31.20.54"
destination_directory="/home/ubuntu/project"

# Backup the log file
cp "$source_file" "$backup_file"

# Move the backup file to the remote server
sshpass -p '123456' scp "$backup_file" "ubuntu@$destination_server:$destination_directory"



