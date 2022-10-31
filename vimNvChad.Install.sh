#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
sudo apt install build-essential git nodejs neovim ripgrep
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
git clone --depth=1 git@github.com:clh021/NvChad-lua-custom.git ~/.config/nvim/lua/custom
# nvim

# :Tutor
# help docs
# :terminal
# :h autocommand
# :h vim.api
# :h insert

# install language highlighting
# :TSInstall css html


# :Telescope keymaps

