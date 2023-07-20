#!/bin/bash
CANTIDAD=$1
if (( $CANTIDAD > 0 )); then

   wget -O "../nombres.txt" "https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv" 
   mkdir -p "../imagenes"
   NOMBRES=($(cat "../nombres.txt"))

   for ((i=0; i<$CANTIDAD; i++)); do
     NOMBRE=${NOMBRES[$RANDOM % ${#NOMBRES[@]}]}
     wget "https://thispersondoesnotexist.com/" -O "../imagenes/$NOMBRE.jpg"
     sleep 1
   done

   tar zcvf imagenes.tar.gz "../imagenes"

   md5sum imagenes.tar.gz > "../verificacion.txt"
else
   echo "El caracter ingresado no es numero o no es valido"
fi
exit 0


