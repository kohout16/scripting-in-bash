#! /bin/bash
# this function will write to output number of files in directory

echo "PID,SCRIPT NAME $$ $0"

function file_count()
{
	local NUMBER_OF_FILES=$(ls $DIR | wc -l )
	echo $NUMBER_OF_FILES

}

read -p "Enter a directory name: " DIR

if [ -d $DIR ]
then
	echo "counting number of files..."
	file_count $DIR
else
	echo "is not a directory"
fi



