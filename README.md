                                                              Tp-entorno 

Integrantes: Tomas Hereñu, Jonatan Gallardo.

Descripción breve del proyecto.

Requisitos Previos

Antes de ejecutar el contenedor, asegúrate de tener instalado Docker en tu sistema. Debera seguir las instrucciones del siguiente enlace para poder continuar: https://docs.docker.com/engine/install/ubuntu/

Instrucciones de Uso

A continuación, se detallan los pasos para ejecutar el contenedor:


    Clona el repositorio en tu host:


git clone https://github.com/tomas1018/tp-entorno.git

Recuerda que tendras que tener a mano tu nombre de usuario en github y tu token, el cual reemplaza la contraseña

Ingresa al directorio del repositorio:

cd tp-entorno

Ejecuta el siguiente comando para construir la imagen del contenedor:

docker build -t tp_entorno .

Crear un Volumen

Crea un volumen para compartir los archivos generados por el contenedor:


docker volume create arch_comprimido

Ejecutar el Contenedor

Ahora, puedes ejecutar el contenedor utilizando el siguiente comando:


    docker run -v arch_comprimido: tu_ruta_correspondiente/volumen -it tp_entorno
tu_ruta_correspondiente= la ruta donde se guardo el contenedor

Una vez ejecutado el contenedor se procedera a descargar automaticamente todo lo necesario para el funcionamiento del mismo.

    Menú de Opciones

    Una vez dentro del contenedor, verás un menú con varias opciones. Puedes seleccionar una opción escribiendo el número correspondiente y presionando Enter.
    
    1) La primera genera imagenes de un servicio web (el cual genera imagenes de forma aleatoria), luego se le asigna un nombre (tambien de caracter aleatoro) y finalmente se comprimeto en la carpeta "imagenes.tar.gz" y genera un archivo con la suma de verificaciones, "verificacion.txt".
    
    2) En este páso se compara la suma de verificaciones co el archivo generado anteriormente "verificacion.txt" y en caso de que la suma de verificaciones sea exitosa procede a descomprimir el archivo. 
    
    3) Aquellas imagenes cuyos nombres asignados empiecen con una letra mayuscula y sigan por minusculas (no importa  si tienen numeros)  seran recortados a una imagen de 512*512 con imagemagick (el cual fue descargado automaticamente con las descarga del contenedor).
    
    4) Finalmente luego de procesadas las imagenes se procedera a generar un archivo con el nombre de todas las imagenes generadas anteriormente,  otro archivo con una lista de los nombres validos (mencionados anteriormente), tambien un archivo el cual contendra los nombres terminados en "a"y por ultimo se comprimiran los archivos anterioemnte nombrados y todas las imagenes generadas.   

    Finalizar

    Cuando hayas terminado de usar el contenedor, puedes escribir "5" o seleccionar "Salir" para finalizar la ejecución del contenedor, gracias por elegirnos :).

Contacto:
 En caso de alguna consulta contactarse a: 
 tomasfernando61@gmail.com 
 jonigallard2@gmail.com
