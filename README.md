# Excalidraw multiple platforms Docker Image

This is a docker image of the online drawing tools [excalidraw](https://github.com/excalidraw/excalidraw) and [excalidraw-room](https://github.com/excalidraw/excalidraw-room).  
Multi-architecture image built with buildx.  

## Dockerfile

- [toras9000/excalidraw-mp](https://github.com/toras9000/docker-excalidraw/tree/main/build/app)
- [toras9000/excalidraw-room-mp](https://github.com/toras9000/docker-excalidraw/tree/main/build/room)

## Example

A sample using a self-signed Certificate Authority server certificate and a reverse proxy is described in docker-compose-with-proxy.yml.  
If proper name resolution has been performed, you can access https://excalidraw.myserver.home/ after running.  

```bash
$ docker-compose --file ./docker-compose-with-proxy.yml up
```

## Enviroment variables

- toras9000/excalidraw-mp
    - `VITE_APP_WS_SERVER_URL`  
      Collaboration server URL.  
      This must always be specified, as the default is an invalid dummy URL.
