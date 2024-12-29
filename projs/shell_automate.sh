#!/bin/bash

# Define the log file and threshold values
LOG_FILE="$HOME/Desktop/devops/projs/system_check_log.txt"
DISK_THRESHOLD=80
MEMORY_THRESHOLD=2112060
UPTIME_THRESHOLD=21600
BACKUP_DIR="/path/to/backup"

# Log the date and time of this check
echo "Running system check at $(date)" >> $LOG_FILE

# Disk Space Check Function
check_disk_space() {
  # Code for checking disk usage
  # If disk usage exceeds threshold, log the alert 

  echo "disk_space"

}

# Memory Usage Check Function
check_memory_usage() {
  # Code for checking memory usage
  # If memory usage exceeds threshold, log the alert

  current_mem=$(grep MemFree /proc/meminfo | awk '{print $2}')
  if [ $MEMORY_THRESHOLD -gt $current_mem ];  then
    echo "$current_mem kb memory remaining, below the threshold."
    echo "$current_mem kb has left, it has exceeds the memory threshold.." >> $LOG_FILE
  fi
}

# Uptime Check Function
check_uptime() {
  # Code for checking system uptime
  # If uptime exceeds threshold, log the alert
  current_uptime=$(uptime -p | awk '{print $2}')
  if [ $current_uptime -eq 6 ];  then
    echo "System been running for $current_uptime, below the threshold."
    echo "ALERT: System uptime is $current_uptime hours." >> $LOG_FILE
  fi
}

# Backup Check Function
check_backup() {
    # Code for checking the most recent backup
    # If no backup found, log the alert
echo "hi"

  }

# Call all the functions
check_disk_space
check_memory_usage
check_uptime
check_backup

# Final log entry
echo "System check completed at $(date)" >> $LOG_FILE
