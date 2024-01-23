#!/bin/bash

# Calculadora de sumas, restas, productos y divisiones
# Alejandro Nevado Maldonado
# 23/01/2024

clear

echo "Alejandro Nevado Maldonado"
echo

if [ $# -ne 2 ]; then
	echo "Número de parámetros incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo "Fichero existente"
	exit
fi

for ((i=1;i<=$2;i++)) do

read -p "Operación Op1 Op2: " op op1 op2

	case $op in

	S)
		res=$(($op1 + $op2))
		echo "$op1 + $op2 = $res"
		echo "$op $op1 $op2 " >> $1
	;;

	R)
		res=$(($op1 - $op2))
		echo "$op1 - $op2 = $res"
		echo "$op $op1 $op2 " >> $1
	;;

	M)
		res=$(($op1 * $op2))
		echo "$op1 * $op2 = $res"
		echo "$op $op1 $op2 " >> $1
	;;

	D)
		res=$(($op1 / $op2))
		echo "$op1 / $op2 = $res"
		echo "$op $op1 $op2 " >> $1
	;;

	X)
		break 
	;;

	*)
		echo "Operación incorrecta"
	;;

	esac

done

ls $1
cat $1
