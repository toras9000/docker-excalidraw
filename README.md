# Excalidraw multiple platforms Docker Image

This is a docker image of the online drawing tools [excalidraw](https://github.com/excalidraw/excalidraw) and [excalidraw-room](https://github.com/excalidraw/excalidraw-room).  
Multi-architecture image built with buildx.  

## Dockerfile

- [toras9000/excalidraw-mp](https://github.com/toras9000/docker-excalidraw/tree/main/build/app)
- [toras9000/excalidraw-room-mp](https://github.com/toras9000/docker-excalidraw/tree/main/build/room)

## Example

A simple local try docker compose file.

```yaml
version: '3.5'

services:
  app:
    image: toras9000/excalidraw-mp:v0.17.0
    restart: unless-stopped
    ports:
      - "8001:8080"
    environment:
      - REACT_APP_WS_SERVER_URL=http://localhost:8002/

  collabo:
    image: toras9000/excalidraw-room-mp:v2023.05.27
    restart: unless-stopped
    ports:
      - "8002:8080"
```

Run and access http://localhost:8001/  

```bash
$ docker-compose up
```

## Enviroment variables

- toras9000/excalidraw-mp
    - `VITE_APP_WS_SERVER_URL`  
      Collaboration server URL.  
      This must always be specified, as the default is an invalid dummy URL.
