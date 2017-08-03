# ag-alpine

![Docker Automated build](https://img.shields.io/docker/automated/ketouem/ag-alpine.svg)
![Docker Build Status](https://img.shields.io/docker/build/ketouem/ag-alpine.svg)

Alpine based container that provides a build of [the silver searcher](https://github.com/ggreer/the_silver_searcher)

## Building

To build the image containing the latest stable version of `ag` simply invoke `make build`.
The built version can be chosen through a variable `AG_VERSION` that is passed to Docker
[`ARG` instruction](https://docs.docker.com/engine/reference/builder/#arg).

Example: `AG_VERSION=1.0.3 make build`

## Using `ag`

Mount the folder you want to search in as a volume beforehand:

`docker run -t --rm -v <folder>:/tmp ketouem/ag-alpine <pattern> <options> <folder>`

## Versioning

The version of the image is directly backed against the latest stable version of `ag`.
