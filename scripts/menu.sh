#!/bin/bash
 echo  "Ingrese la opcion que desee"
select opcion in Generar Descomprimir Procesar Comprimir Salir
do
   case  $opcion in
      "Generar")
         echo "Ingrese el numero de imagenes que desea generar"
         read numero
         ./generar.sh $numero
         ;;
      "Descomprimir")
         echo "Ingrese la carpeta que quiere descomprimir (Recomendacion: ./imagenes.tar.gz"
 	 read arch_tar_gz
         echo "Ingrese el archivo con la suma de verificacion (Recomendacion: ../verificacion.txt)"
         read verificacion
	 ./descomprimir.sh $arch_tar_gz $verificacion
         ;;
      "Procesar")
	 ./procesar.sh
	 ;;
      "Comprimir")
	 ./comprimir.sh
	 ;;
      "Salir")
	 echo "Gracias por su descarga :)"
	 break
	 ;;
      *)
	 echo "Opcion ingresada incorrecta"
	 ;;
   esac
done
