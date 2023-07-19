#!/bin/bash
nombres=$(ls "./imagenes")

if [ -e nom_img.txt ] ;then
  rm nom_img.txt
  touch nom_img.txt
else
  touch nom_img.txt
fi

for img in $nombres; do
   nombre_arch=$(basename "$img")
   echo "${nombre_arch%.*}" >> nom_img.txt
done

if [ -e nom_val.txt ] ;then
  rm nom_val.txt
  touch nom_val.txt
else
  touch nom_val.txt
fi

egrep  ^[A-Z][a-z]+,?[0-9]* nom_img.txt >> nom_val.txt

if [ -e nom_a.txt ] ;then
  rm nom_a.txt
  touch nom_a.txt
else
  touch nom_a.txt
fi

egrep  a,?[0-9]*$ nom_img.txt >> nom_a.txt

tar zcvf resulado_final.tar.gz "./imagenes" "./nom_img.txt" "./nom_val.txt" "./nom_a.txt" "../imagenes_reducidas"


cat nom_img.txt
cat nom_val.txt
cat nom_a.txt

