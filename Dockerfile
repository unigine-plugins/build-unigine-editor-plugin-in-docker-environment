FROM ubuntu:20.04

# basic libs
RUN apt update &&\
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    python3 \
    qtbase5-dev qtdeclarative5-dev \
    make cmake \
    build-essential libgl1-mesa-dev \
    gcc g++ \
    curl \
    pkg-config \
    libcurl4-openssl-dev \
    zlib1g zlib1g-dev \
    libpng-dev \
    libwebsockets-dev \
    apt-utils \
    gcc g++ \
    qtchooser
 
WORKDIR /opt/sources