#!/bin/bash
imagenes_desc="./imagenes"

mkdir -p "../imagenes_reducidas"

for img in "$imagenes_desc"/*.jpg; do
   nombre_arch=$(basename "$img")
   nombre=${nombre_arch%.*}

   if [[ $nombre =~ ^[A-Z][a-z]+,?[0-9]* ]] ;then
      convert "$img" -gravity center -resize 512x512+0+0 -extent 512x512 "../imagenes_reducidas/$nombre.jpg"
      echo $nombre
   fi

done
