#!/bin/bash

while :

	do

	l=1
	while [ $l -lt 21 ]
	do

#	echo "pingando maquisa $l"
	ping -c 2 10.100.64.$l > pinga1 2> pinga2
#	cat pinga1

	a= `cat pinga1|grep recetved cut -d"," -f2| cut-d" " -f2`
#	echo $a
	if [$a -eq 0 ];
	then
		echo "Maquina $l não OK"
	else
		echo "Maquina $l OK"
	fi

	l=`echo $l+1|bc`

	sleep 1

	done <  maquinas

done
