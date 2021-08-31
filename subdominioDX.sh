#!/bin/bash                                                     

                           
echo " ____          _   ___  "
echo "|  _ \__  __  / | / _ \ "
echo "| | | \ \/ /  | || | | | "
echo "| |_| |>  <   | || |_| | "
echo "|____//_/\_\  |_(_)___/  "
echo "                       "



echo "DIGITE UM DOMINIO :" 
read dom

for line in $(cat listadom.txt);
do

ping -c 1 $line.$dom  2>/dev/null | grep "PING" | cut -d " " -f2

done



