# !/usr/bin/env bash
# This script backs up my documents
# filename: backup-documents-to-nas.sh

# Parameters
sourcefolder=$HOME/
targetfolder=/mnt/nasdmt003/linux_home_backup/$(hostname)/

logdirectory=$HOME/logs/backup
logfilepath="$logdirectory/backup-home-dir.log"

# Prequisites
# Create log directory if it does not exist
if [ ! -d "$logdirectory" ]; then
	mkdir -p "$logdirectory"
fi

# Create target directory if it does not exist
if [ ! -d "$targetfolder" ]; then
        mkdir -p "$targetfolder"
fi


# Start Sync
rsync -itru --delete --exclude ".cache/*" --log-file=$logfilepath $sourcefolder $targetfolder
