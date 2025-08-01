#!/bin/bash

## Identify the name of the function "showuptime" followed by brackets ().
## thn what it needs to do b/w curly brackets { }. 
showuptime(){
	## catch the output of a command in a variable by putting variable=$(command)
	up=$(uptime -p | cut -c4-)
	since=$(uptime -s)
	cat << EOF
---------
THIS MACHINE HAS BEEN UP FOR ${up}
It has been running since ${since}
---------
EOF
}


## we call the function anywhere in the script at long as its under it.
showuptime
