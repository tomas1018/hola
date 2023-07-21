#!/bin/bash
# Recibe un archivo con las imagenes generadas
pwd
ARCH_IMAGENES=$1
# Recibe un archivo con las suma de verificaciones
VERIFICACION_2=$2


if [ -e "$ARCH_IMAGENES" ]; then
   # Realiza el chequeo con las sumas de verificaciones
   RESULTADO=$(md5sum -c "$VERIFICACION_2")
   VERIFICACION_TOTAL=$?
   echo $RESULTADO

   if [ $VERIFICACION_TOTAL -eq 0 ] ; then
       #Descomprime el archivo imagenes.tar.gz
       tar xvf "imagenes.tar.gz"
   else
      echo "Error, la suma de verificaciones es incorrecta"
   fi
else
   echo "Error, el archivo ingreso no corrresponde o no existe"
fi
exit 0
