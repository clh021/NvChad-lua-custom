#!/usr/bin/env bash
# leehom Chen clh021@gmail.com

# ~/.bashrc: executed by bash(1) for non-login shells.
# 如果不是交互式运行，不执行任何操作
[[ $- != *i* ]] && return

# 解决远程服务器使用vi|vim时E437: terminal capability "cm" required的问题
export TERM=xterm

# home bin PATH
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi
# local bin PATH
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# 如果存在 ~/.local/bin/go 就直接使用此路径
# 否则不做任何动作，交给其它脚本(go.set.sh)来完成 go 的安装和切换
if [ -f "$HOME/.local/bin/go" ] ; then
    goBin="$(dirname "$(realpath $HOME/.local/bin/go)" )"
    export GOROOT="$(dirname "${goBin}" )"
    export GOPATH="$HOME/.cache/.go-global/${GOROOT#*go}"
    mkdir -p $GOPATH;
    export GOPROXY="https://goproxy.cn,direct"
    export CGO_ENABLED=1
    export GO111MODULE=on # 目前2022.07.18所有国产架构都可以支持到1.13.15
    PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
fi


if [ -f "$HOME/.local/bin/node" ] ; then
    # export NODE_PATH="$NODE_HOME/lib/node_modules"
    PATH="$HOME/.cache/.npm-global/bin:$PATH"
fi
