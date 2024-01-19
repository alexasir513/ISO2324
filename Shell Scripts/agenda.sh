#!/bin/bash

# Agenda telefónica
# 17/01/2024
# Alejandro Nevado Maldonado

clear

while true ;do

echo "A: Añadir una entrada"
echo "B: Buscar por dni"
echo "C: Ver la agenda completa"
echo "D: Eliminar todas las entradas de la agenda"
echo "E: Finalizar"
echo

read -p "Selecciona una opción: " op
echo

case $op in

	A)

	read -p "Introduce el dni a añadir: " dni
	
	if grep "^$dni:" agenda.txt >/dev/null ; then 
		echo "Error, usuario ya existente"
	else
		read -p "Introduce el nombre: " nombre
		read -p "Introduce los apellidos: " apellidos
		read -p "Introduce la localidad: " localidad
		echo $dni:$nombre:$apellidos:$localidad >> agenda.txt
	fi
	;;

	B)

	read -p "Introduce un dni: " dni
	
	if grep "^$dni:" agenda.txt >/dev/null ; then
		nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
		apellidos=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
		localidad=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
		
		echo "La persona con DNI número $dni es: $nombre $apellidos, y vive en $localidad"
	else
		echo "Error, DNI $dni no encontrado"
	fi
	;;

	C)
	
	if [ -s agenda.txt ]; then
		cat agenda.txt
	else
		echo "Agenda vacía"
	fi
	;;

	D)
	
	> agenda.txt
	;;

	E)

	exit
	;;

esac

done
