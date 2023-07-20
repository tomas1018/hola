#!/bin/bash
# Recibe un numero entero 
CANTIDAD=$1
# Verifica si es numero valido
if (( $CANTIDAD > 0 )); then
   # Guarda los nombres del archivo del dataset y los guarda en el archivo nombres.txt
   wget -O "../nombres.txt" "https://raw.githubusercontent.com/adalessandro/EdP-2023-TP-Final/main/dict.csv" 
   mkdir -p "../imagenes"
   NOMBRES=($(cat "../nombres.txt"))
   
   # Crea x cantidad de imjagines
   for ((i=0; i<$CANTIDAD; i++)); do
     # Elije un nombre al azar del archivo nombres.txt
     NOMBRE=${NOMBRES[$RANDOM % ${#NOMBRES[@]}]}
     #Guarda la imagen con el nombre al azar
     wget "https://thispersondoesnotexist.com/" -O "../imagenes/$NOMBRE.jpg"
     sleep 1
   done
    
   #Comprime el archivo con las imagenes con gzip, en el archivo imagenes.tar.gz
   tar zcvf imagenes.tar.gz "../imagenes"
   
   # Guarda la suma de verificaciones en el archivo verificaciones.txt 
   md5sum imagenes.tar.gz > "../verificacion.txt"
else
   echo "El caracter ingresado no es numero o no es valido"
fi
exit 0


