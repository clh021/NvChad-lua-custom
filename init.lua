local autocmd = vim.api.nvim_create_autocmd
local opt=vim.opt
-- enable number and relative line number
opt.number = true
opt.rnu = true
opt.scrolloff = 8

-- use relativenumber when editing
autocmd({ "InsertEnter" }, { pattern = { "*" }, command = "set nornu" })
autocmd({ "InsertLeave" }, { pattern = { "*" }, command = "set rnu" })


-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
