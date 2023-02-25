#!/bin/bash
#read -p "Write file name for testing:" INPUT

PARAM_NUM=$#

echo "executing $0"

# check - if no inputs write message
echo "number of input params: $#"
if [ $PARAM_NUM -gt 0 ]
then
	# function for checking
	echo " --- result ---"
	for INPUT in $@
	do
	if [ -d "$INPUT" ]
	then
		echo "$INPUT : it is a directory"
	elif [ -f "$INPUT" ]
	then
		echo "$INPUT : it is a regular file"
	else
		echo "$INPUT : non exist or iregular file"
	fi
done
else
	echo "no param, please enter at least one input"
fi



