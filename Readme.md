## Programa en Perl para escanear puertos abiertos puede ser útil para fines de auditoría y seguridad personal.

***Escaneo de puertos abiertos en una IP o sitio web. Este script utiliza el módulo ´IO::Socket´ para intentar conectar a diferentes puertos y determinar cuáles están abiertos.***

Instalar:
```sh
cpan IO::Socket
```

Uso:
```sh
perl open-ports.pl [IP o sitio web]
```


## Programa para buscar por email:

Uso:
```sh
perl search-photo.pl <tu_email> <directorio>
```

***Reemplaza <tu_email> con tu dirección de correo electrónico y <directorio> con la ruta del directorio donde deseas buscar.***

#### Buscar por foto:

Para el script de Perl:
```sh
chmod +x search-photo.pl
```

Asegúrate de que el script de Python tenga el permiso de ejecución si lo necesita:
```sh
chmod +x search-photo.py
```

Navega al directorio donde están almacenados los scripts y proporciona la ruta de la imagen y las URLs que deseas escanear. Por ejemplo:

```sh
perl search-photo.pl ruta_de_imagen url1 url2 url3 ...
```

Ejemplo:

```sh
perl search-photo.pl mi_foto.jpg https://example.com/image1.jpg https://example.com/image2.jpg https://example.com/image3.jpg
```

Siguiendo estos pasos, puedes ejecutar ambos programas de manera simultánea para buscar personas en sitios web utilizando reconocimiento facial.

