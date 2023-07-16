#!/bin/bash
cantidad=$1
wget -O "../nombres.txt" "https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv" mkdir -p "../imagenes"
nombres=($(cat "../nombres.txt"))

for ((i=0; i<$cantidad; i++)); do
  nombre=${nombres[$RANDOM % ${#nombres[@]}]}
  wget "https://thispersondoesnotexist.com/" -O "../imagenes/$nombre.jpg"
  sleep 2
done

tar zcvf imagenes.tar.gz "../imagenes"

md5sum imagenes.tar.gz > "../verificacion.txt"

exit 0


