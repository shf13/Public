#!/bin/bash
echo "which command do you want check"
read command

echo "the command you choose is $command"
echo "..........................."

which $command > /dev/null

if [ $? -gt 0 ]; then
	echo "$command doesn't exist on the machine"
    echo "I will install $command"
    sudo apt install $command 

else
    echo "the $command is installed already"
fi

# exit 0

