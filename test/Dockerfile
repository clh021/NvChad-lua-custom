# docker build -t leehom/cloud.client .
FROM ubuntu:22.04
RUN apt update \
    && apt install -y curl
RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
RUN apt update \
    && apt -y upgrade
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install \
    wget \
    build-essential \
    libgdk3.0-cil \
    libappindicator3-1 \
    libwebkit2gtk-4.0-37
RUN apt install -y sudo
RUN useradd -ms /bin/bash lee \
    && usermod -aG sudo lee
WORKDIR /home/lee
