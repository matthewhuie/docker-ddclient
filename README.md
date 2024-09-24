# matthewhuie/ddclient
This is a Docker container that provides a lightweight and generic ddclient instance, based on Alpine Linux. It provides the latest version of ddclient via apk. This repository currently builds for multi-arch: ARMv7, ARM64, and AMD64.

![buildx](https://github.com/matthewhuie/docker-ddclient/workflows/buildx/badge.svg?branch=main)

## Getting Started
Pull the image from Docker Hub.
```bash
docker pull matthewhuie/ddclient
```

Create and start a container. For example, use default ddclient.conf, and run detached.
```bash
docker run -d matthewhuie/ddclient
```

Keep in mind, this is a barebones instance of ddclient, allowing more flexibility on how the image can be used. 

For example, an existing ddclient.conf could be used.
```bash
docker run -d \
  -v /etc/ddclient.conf:/etc/ddclient/ddclient.conf:ro \
  matthewhuie/ddclient
```

## Links
- https://github.com/matthewhuie/docker-ddclient
- https://hub.docker.com/r/matthewhuie/ddclient
- https://github.com/ddclient/ddclient
