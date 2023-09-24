Herramientas de troubleshooting
======================

# Referencia rápida

-	**¿Objetivo de la imagen?**
-	**¿Cómo usar esta imagen?**
-	**Login por defecto**
-	**Arquitectura soportada**
-	**Volumenes**
-	**Uso avanzado - persistencia**
-	**Rendimiento optimizado**
-	**[Sitio oficial de Emby](https://emby.media/)**
  

## ¿Objetivo de la imagen?

La finalidad de esta imagen es realizar tareas de operación como lo son validar endpoints, puertos de escucha, dns, comandos aws cli, etc.

<img src="https://media.licdn.com/dms/image/D4D12AQGWWcGt57vcgw/article-cover_image-shrink_720_1280/0/1676661051336?e=2147483647&v=beta&t=DPSkA9tURy5fcnZhxhsKREwkgeeK-VZZu5ZzCfjRn-g" alt="tr" style="zoom:30%;" />

## ¿Cómo usar esta imagen?

Puede hacer uso de docker cli o docker compose, crea un container y conectate a través de un `exec`


### docker cli

```console
$ docker container run --rm -ti neytor/tools
```

### docker-compose (recomendado)

```yaml
---
version: '3'
services:
  tools:
    container_name: tools_container
    image: neytor/tools
    stdin_open: true
    tty: true
    command: ash #OPCIONAL
...
```

## Paquetes instalados

La arquitectura soportada es la siguiente:

| Paquete      | Disponible | 
| ------------ | ---------- | 
| awscli v2    | ✅         | 
| bind-tools   | ✅         | 
| curl         | ✅         |
| bind-tools   | ✅         |
| zip, unzip   | ✅         |
| iproute2     | ✅         |
| net-tools    | ✅         |
| dnsutils     | ✅         |
| vim          | ✅         |

## Arquitectura soportada

La arquitectura soportada es la siguiente:

| Arquitectura | Disponible | Tag descarga                 |
| ------------ | ---------- | ---------------------------- |
| x86-64       | ✅          | docker pull neytor/tools    |
| arm64        | ✅          | docker pull neytor/tools:arm



[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/docker-library/docs/db214ae34137ab29c7574f5fbe01bc4eaea6da7e/wordpress/stack.yml)

## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://www.yonier.com/](https://www.yonier.com)
