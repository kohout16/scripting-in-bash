#! /bin/bash
# this function will write to output number of files in directory

echo "PID,SCRIPT NAME $$ $0"

read -p "Enter input for ls: " IN

ls $IN
echo $?

if [$?]
then
	echo "exiting ok"
else
	echo "exit with 3"
	exit 3
fi





