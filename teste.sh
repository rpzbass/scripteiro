#!/bin/bash




if [ $# -eq 3 ]
then
	for file in $1*$2

	do

	newfile=$( echo $file | cut -d "." -f1)

	 mv "$file" "$newfile.$3"
 	done



else 
	    echo "erro 2 ext"
	    exit 1

fi 

exit 0
