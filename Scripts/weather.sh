#!/bin/bash

read -p "Enter the name of the city: " city

for city in $city;
do 
	weather=$(curl -s http://wttr.in/$city?format=4)
	echo "The weather for $weather"
done

