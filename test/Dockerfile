FROM ubuntu:22.04
# 以下两个环境变量都不能设置容器初始默认 hostname
# 只能在运行容器时通过 -h|--hostname 来设置
ENV HOSTNAME=${HOSTNAME:-NVimTest}
ENV HOST=${HOSTNAME:-NVimTest}
RUN apt update \
    && apt install -y curl
RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
RUN apt update \
    && apt -y upgrade

#sudo apt install build-essential git unzip neovim ripgrep
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install \
    wget \
    build-essential \
    git \
    unzip \
    ripgrep

# prepare nvim
RUN wget -c https://ghproxy.com/https://github.com/neovim/neovim/releases/download/v0.8.1/nvim-linux64.deb -O /tmp/nvim.deb \
    && dpkg -i /tmp/nvim.deb
# RUN apt install -y libfuse2 fuse
# RUN wget -c https://ghproxy.com/https://github.com/neovim/neovim/releases/download/v0.8.1/nvim.appimage -O /usr/bin/nvim \
#     && chmod +x /usr/bin/nvim

# sudo and user
RUN apt install -y sudo
RUN useradd -ms /bin/bash lee \
    && usermod -aG sudo lee

# user and workdir
WORKDIR /home/lee
USER lee

# nvim config
RUN git clone --depth=1 https://ghproxy.com/https://github.com/NvChad/NvChad ~/.config/nvim
RUN git clone --depth=1 https://ghproxy.com/https://github.com/clh021/NvChad-lua-custom.git ~/.config/nvim/lua/custom
