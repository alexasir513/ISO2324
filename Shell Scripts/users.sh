#!/bin/bash

# users.sh
# Alejandro Nevado Maldonado
# 05/02/2024

clear

refuid=${1:-1000}
fecha=$(date +"%d-%m-%Y")
hora=$(date +"%H:%M")

echo "==================================================================="
echo "Informe de ususarios el día $fecha a las $hora"
countuser=0

while IFS=":" read -r user x uid gid g home shell; do
	if [ "$uid" -gt "$refuid" ]; then
		echo "$user - $uid"
		((countuser++))
	fi
done < /etc/passwd

echo "Total: $countuser usuarios"

echo "==================================================================="

solic="$fecha - $hora - El usuario $USER ha solicitado un informe de usuarios"
echo "$solic" >> /tmp/logeventos

exit
