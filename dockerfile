FROM ubuntu


# Instalar 

RUN apt-get update && apt-get install -y imagemagick wget
WORKDIR /tp-entorno/scripts/

# Establecer el directorio de trabajo

COPY /scripts/generar.sh /tp-entorno/scripts/
COPY /scripts/descomprimir.sh /tp-entorno/scripts/
COPY /scripts/procesar.sh /tp-entorno/scripts/
COPY /scripts/comprimir.sh /tp-entorno/scripts/
COPY /scripts/menu.sh /tp-entorno/scripts/

# Definir el comando por defecto para ejecutar el menú
CMD ["bash" , "/tp-entorno/scripts/menu.sh"]

#comandos a ejecutar

#docker build -t tp_entorno .
#docker volume create arch_comprimido
#docker run -v arch_comprimido:/tp-entorno/scripts/ -it tp_entorno
