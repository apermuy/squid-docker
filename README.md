# Squid 4 

![Squid Logo](logo.jpg?raw=true "Squid logo")

Repositorio con receta para Squid 4 basado en la imagen Docker [ubuntu/squid](https://hub.docker.com/r/ubuntu/squid)

## Crear e iniciar contenedor

```
cd squid
docker-compose up -d

```
El contenedor expone los puertos **0.0.0.0:3128->3128/tcp, :::3128->3128/tcp**


## Configuración

El fichero **config/squid.conf** contiene la configuración principal. Debe prestar especial atención a la configuración relativa a listas de control de acceso **ACL** y la definición de su red local. De lo contrario no podrá conectarse al servicio desde equipos de su LAN. La configuración en cuestión es:

```
acl localhost src 127.0.0.1/255.255.255.255
acl lan src 192.168.110.0/255.255.255.0
```

El fichero **config/no_cache" contiene los dominios cuyos recursos no se almacenarán en la caché de Squid. Ejemplo:

```
www.as.com
```


El fichero **config/url_deny** contiene las URL que serán rechazadas por Squid. Ejemplo:

```
www.google.es
```

