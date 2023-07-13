#!/bin/bash

check_ret() {
    if [ $1 -ne 0 ]; then
        echo ""
        echo "!!! FAIL: $2"
        echo "********************************************************************************"
        echo ""
        exit $1
    else
        echo ""
        echo "*** SUCCESS: $2"
        echo "********************************************************************************"
        echo ""
    fi
}

docker rmi sea5kg/unigine-editor-pluigns:v2.17
docker rmi sea5kg/unigine-editor-pluigns:latest

docker build -t sea5kg/unigine-editor-pluigns:latest .
check_ret $?

docker build -t sea5kg/unigine-editor-pluigns:v2.17 .
check_ret $?


# run

# docker run --rm -it -v `pwd`:/opt/sources sea5kg/unigine-pluigns:latest /bin/bash
