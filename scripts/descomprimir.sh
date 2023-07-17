#!/bin/bash

arch_imagenes=$1
verificacion_2=$2

if [ -e "$arch_imagenes" ]; then
   resultado=$(md5sum -c "$verificacion_2")
   verificacion_total=$?
   echo $resultado
   echo $verificacion_total

   if [ $verificacion_total -eq 0 ] ; then
       tar xvf "imagenes.tar.gz"
   else
      echo "Error, la suma de verificaciones es incorrecta"
   fi
else
   echo "Error, el archivo ingreso no corrresponde o no existe"
fi
