#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
docker build -t test.nvim .
docker images | grep none | awk '{ print $3; }' | xargs docker rmi --force
# docker cp -r `pwd` nvim:`pwd`
docker run -it --rm --name nvim --hostname=nvim test.nvim bash