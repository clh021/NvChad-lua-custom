#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
set -e
npm i -g vscode-html-languageserver-bin
# bash
npm i -g bash-language-server
# docker
npm i -g dockerfile-language-server-nodejs
# css
npm install -g vscode-css-languageserver-bin
# cmake
pip install cmake-language-server
# python
pip install python-language-server
# typescript
npm install -g typescript typescript-language-server
# vue
npm install -g vls
# yaml
npm install -g yaml-language-server
# golang <= v1.12
GO111MODULE=on go install golang.org/x/tools/gopls@v0.7.5
# golang <= v1.15
GO111MODULE=on go install golang.org/x/tools/gopls@v0.9.5
# golang other
GO111MODULE=on go install golang.org/x/tools/gopls@latest

