#!/bin/bash 

if [ $# -eq 3 ]
then
	for file in $1*$2

	do

	newfile=$( echo $file | cut -d "." -f1)
          
         echo "ENCRYPTING ARQUIVOS......" $file  
	 echo "teste" | openssl enc -aes-256-cbc -salt -in "$file" -out "$newfile.$3" -pass stdin
         rm $file
 	done



else 
	    echo "erro 2 ext"
	    exit 1

fi 

exit 0
