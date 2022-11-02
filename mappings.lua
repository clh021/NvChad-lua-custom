local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },
  i = {
    ["jk"] = { "<ESC>", "normal node" }
  },
  v = {
    ["jk"] = { "<ESC>", "normal node" }
  },
}

-- more keybinds!

return M
