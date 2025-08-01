#!/bin/bash
echo "#######################"
echo "Is my internt down?"
echo "#######################"
echo " "

echo "What do you want to check (IP/Website)?"
read target

while true;
do 
	if ping -q -c 2 -w 3 $target > /dev/null; then
		echo "Hey, you're up!"
		break
		## Break → Get out of the loop
	else
	echo "$target is currently down."
	fi
sleep 2
done

