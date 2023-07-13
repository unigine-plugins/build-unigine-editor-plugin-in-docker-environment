FROM ubuntu:20.04

# basic libs
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends \
    python3 \
    wget \
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

# Install cmake

RUN set -ex && mkdir /usr/local/etc/cmake && \
    cd /tmp && \
    wget https://cmake.org/files/v3.20/cmake-3.20.5-linux-x86_64.sh --no-check-certificate && \
    chmod +x /tmp/cmake-3.20.5-linux-x86_64.sh && \
    /tmp/cmake-3.20.5-linux-x86_64.sh --skip-license --prefix=/usr/local/etc/cmake && \
    cd / && ln -s /usr/local/etc/cmake/bin/cmake /usr/local/bin/cmake

WORKDIR /opt/sources
