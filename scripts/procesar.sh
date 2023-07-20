#!/bin/bash

# Realiza las verificaciones de los archivos si existen.

if [ ! -d ../imagenes ]; then
   echo "Todavia no generaste imagenes"

elif [ ! -d ./imagenes ] ; then
   echo "Todavia no Descomprimiste los archivos"

else
   IMAGENES_DESC="./imagenes"

   mkdir -p "../imagenes_reducidas"

   # Itera las imagenes que estan dentro del archivo imagenes.
   for IMG in "$IMAGENES_DESC"/*.jpg; do
      # Extrae el nombre de la imagen y se lo asigna a NOMBRE_ARCH.
      NOMBRE_ARCH=$(basename "$IMG")
      # Elimina todo lo que tenga despues de ".", incluyendo el ".", del NOMBRE.
      NOMBRE=${NOMBRE_ARCH%.*}
       
      # Realiza el filtro de nombres validos 
      if [[ $NOMBRE =~ ^[A-Z][a-z]+,?[0-9]* ]] ;then
         # Realiza la convercion de las imagenes a 512x512  las guarda en imagenes_reducidas
         convert "$IMG" -gravity center -resize 512x512+0+0 -extent 512x512 "../imagenes_reducidas/$NOMBRE.jpg"
         echo $NOMBRE
      fi

   done

   if [ -z "../imagenes_reducidas" ]; then
      echo "No se encontraron nombres validos"
   fi
fi
exit 0
