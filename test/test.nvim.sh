#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
docker build -t test.nvim .
docker images | grep none | awk '{ print $3; }' | xargs docker rmi --force
docker run -it --rm --hostname=NVimTest test.nvim bash