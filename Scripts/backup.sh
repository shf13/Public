#!/bin/bash

# Check to make sure the user has entered exactly two arguments.
if [ $# -ne 2 ] 
then
	echo "Usage: backup.sh <source_dir> <traget_dir> "
	echo "please try again"
	exit 1
fi

# Check if the rsync command is installed

if ! command -v rsync > /dev/null 2>&1
then
	echo " This script requires rsync to be installed."
	echo "Please use your distribution's package manager to install it"
	echo "e.g. sudo apt install rsync"
	exit 2
fi

#Capture the current date, and store it in the format YYYY-MM-DD

current_date=$(date +%Y-%m-%d)

rsync_options_dry_run="-avb --backup-dir $2/$current_date --delete --dry-run"
rsync_options="-avb --backup-dir $2/$current_date --delete "
	# --delete will make it true sync, if there were 10 files and now only 9 it will delete the deleted file from source from the target. 
	
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log 


### rsync -rav $1 $2/$current_date 

