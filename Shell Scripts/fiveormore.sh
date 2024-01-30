#!/bin/bash

#
#
#

clear

fich=$(ls $2)

if [ $# -ne 2 ]; then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ -f $1 ]; then
        echo "Archivo existente"
        exit
fi

if [ -d $2 ]; then
        echo "El directorio no existe"
        exit
fi

if [ -z $fich ]; then
        echo "El directorio está vacío"
        exit
fi


echo "Alejandro Nevado Maldonado"
echo

ficheros=$( ls $2/*.txt )

for i in $ficheros; do
	if [ -f $i ];then
		lineas=$(cat $i | wc -l) 
		if [ $lineas -ge 5 ];then
			echo $i
			echo $i >> $1
			palabras=$(cat $i | WC -w)
			echon "El fichero tiene $palabras palabras" > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero= $(cat $1 | wc -l)

echo $numero >> $1



