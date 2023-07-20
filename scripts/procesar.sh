#!/bin/bash
if [ ! -d ../imagenes ]; then
   echo "Todavia no generaste imagenes"

elif [ ! -d ./imagenes ] ; then
   echo "Todavia no Descomprimiste los archivos"

else
   IMAGENES_DESC="./imagenes"

   mkdir -p "../imagenes_reducidas"


   for IMG in "$IMAGENES_DESC"/*.jpg; do
      NOMBRE_ARCH=$(basename "$IMG")
      NOMBRE=${NOMBRE_ARCH%.*}

      if [[ $NOMBRE =~ ^[A-Z][a-z]+,?[0-9]* ]] ;then
         convert "$IMG" -gravity center -resize 512x512+0+0 -extent 512x512 "../imagenes_reducidas/$NOMBRE.jpg"
         echo $NOMBRE
      fi

   done

   if [ -z "../imagenes_reducidas" ]; then
      echo "No se encontraron nombres validos"
   fi
fi
exit 0
