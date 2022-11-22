#!/usr/bin/env bash
# Don't Edit! It auto copy from /home/chenlianghong/shell/vimNvChad.Install.sh
# leehom Chen clh021@gmail.com
SCRIPT_PATH=$(realpath "$0")
DIST_SCRIPT_PATH="${HOME}/.config/nvim/lua/custom/vimNvChad.Install.sh"
if test -f "$DIST_SCRIPT_PATH"; then
  echo "NvChad already Installed."
else
  sudo apt install build-essential git nodejs neovim ripgrep
  rm -rf ~/.config/nvim
  rm -rf ~/.local/share/nvim
  rm -rf ~/.cache/nvim
  git clone --depth=1 https://github.com/NvChad/NvChad ~/.config/nvim
  git clone --depth=1 git@github.com:clh021/NvChad-lua-custom.git ~/.config/nvim/lua/custom
fi
sed "2 i # Don't Edit! It auto copy from ${SCRIPT_PATH}" "${SCRIPT_PATH}" > "${DIST_SCRIPT_PATH}"
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

