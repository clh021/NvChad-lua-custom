#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# :Tutor
# help docs
# :terminal
# :h autocommand
# :h vim.api
# :h insert

# install language highlighting
# :TSInstall css html

# :Telescope keymaps
docker images | grep none | awk '{ print $3; }' | xargs docker rmi --force
docker build -t test.nvim .
