FROM ubuntu


# Instalar 

RUN apt-get update && apt-get install -y imagemagick wget
WORKDIR /tp-entorno/scripts/

# Establecer el directorio de trabajo

COPY /tp-entorno/scripts/generar.sh /tp-entorno/scripts/
COPY /tp-entorno/scripts/descomprimir.sh /tp-entorno/scripts/
COPY /tp-entorno/scripts/procesar.sh /tp-entorno/scripts/
COPY /tp-entorno/scripts/comprimir.sh /tp-entorno/scripts/
COPY /tp-entorno/scripts/menu.sh /tp-entorno/scripts/

# Definir el comando por defecto para ejecutar el menú
CMD ["bash" , "/tp-entorno/scripts/menu.sh"]

$ docker volume create arch_comprimido

$ docker build -t tp_entorno

$ docker run -v arch_comprimido: $(pwd) -it tp_entorno
