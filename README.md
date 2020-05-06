# MDsrv Docker Container

[MDsrv](http://nglviewer.org/mdsrv/) is a server for viewing and sharing
molecular dynamics simulations.

This repository provides a Docker container for running the server.

## Running

Launching a local MDsrv service is easy:

    docker run --rm -p 8080:80 blivens/mdsrv

This pulls in the image from
[docker hub](https://hub.docker.com/r/blivens/mdsrv) and executes it.

To make trajectory files available, mount them at `/usr/src/app` inside the
container. A more complete example might be:

    docker run -d -p 80:80 -v /path/to/trajectories:/usr/src/app:ro blivens/mdsrv

## Building

To build the docker image locally:

    docker build -t mdsrv .

Images are built automatically on docker hub

## Deploying

Images are published to [docker hub](https://hub.docker.com/r/blivens/mdsrv).
However, to deploy without pulling from dockerhub you can transfer a tarball
manually.

On the build machine:

    docker save -o mdsrv.tar mdsrv

Compress mdsrv.tar and copy it to the server. Then load the image:

    docker load mdsrv.tar

    docker tag mdsrv:latest blivens/mdsrv:latest
    docker push blivens/mdsrv:latest
