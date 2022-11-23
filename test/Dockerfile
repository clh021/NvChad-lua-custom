FROM ubuntu:22.04
ENV DOCKER_HOSTNAME=${DOCKER_HOSTNAME:-NVimTest}
RUN apt update \
    && apt install -y curl
RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
RUN apt update \
    && apt -y upgrade
#rm -rf ~/.config/nvim
#rm -rf ~/.local/share/nvim
#rm -rf ~/.cache/nvim
#sudo apt install build-essential git nodejs neovim ripgrep
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install \
    wget \
    build-essential \
    git \
    nodejs \
    neovim \
    ripgrep
RUN apt install -y sudo
RUN useradd -ms /bin/bash lee \
    && usermod -aG sudo lee
WORKDIR /home/lee
USER lee
RUN git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
#RUN git clone --depth=1 https://github.com/clh021/NvChad-lua-custom.git ~/.config/nvim/lua/custom
RUN git clone --depth=1 https://ghproxy.com/https://github.com/clh021/NvChad-lua-custom.git ~/.config/nvim/lua/custom
