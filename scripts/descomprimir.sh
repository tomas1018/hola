#!/bin/bash

ARCH_IMAGENES=$1
VERIFICACION_2=$2

if [ -e "$ARCH_IMAGENES" ]; then
   RESULTADO=$(md5sum -c "$VERIFICACION_2")
   VERIFICACION_TOTAL=$?
   echo $RESULTADO

   if [ $VERIFICACION_TOTAL -eq 0 ] ; then
       tar xvf "imagenes.tar.gz"
   else
      echo "Error, la suma de verificaciones es incorrecta"
   fi
else
   echo "Error, el archivo ingreso no corrresponde o no existe"
fi
exit 0
