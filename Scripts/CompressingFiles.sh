#!/bin/bash
## It will echo every file in the folder and compress it to tar.gz
##	# You can just choose one file extenstion e.g.: *.log

for file in *.*
do
	echo $file
	tar -czvf $file.tar.gz $file
done
