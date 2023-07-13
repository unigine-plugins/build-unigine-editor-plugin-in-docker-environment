# build-unigine-editor-plugin-in-docker-environment

[![UnigineVersion](https://img.shields.io/badge/Unigine-2.17-yellow.svg)](https://developer.unigine.com/en/docs/2.17/)

hub.docker: https://hub.docker.com/r/sea5kg/unigine-editor-pluigns

Environment for build unigine-editor-plugins in docker (Linux)


In the root of your project:

```
$ docker pull sea5kg/unigine-editor-pluigns:latest
$ docker run --rm -it -v `pwd`:/opt/sources sea5kg/unigine-editor-pluigns:latest /bin/bash
```

Installed:
 - cmake 3.20.5
 - Qt5.12.8
 - gcc g++
 - etc
