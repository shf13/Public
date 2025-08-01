#!/bin/bash

echo "Please enter the subnet (the first 3 values in your IP4 1.1.1):"
read SUBNET

for IP in $(seq 1 50); do
	ping -c 2 $SUBNET.$IP
done


## seq: means sequence can work with numbers and words/letters
## ping -c 2: will ping it twice only  

