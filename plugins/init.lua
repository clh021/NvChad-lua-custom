-- local overrides = require "custom.plugins.overrides"
-- return {
--   -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard
--
--   -- Override plugin definition options
--   ["neovim/nvim-lspconfig"] = {
--     config = function()
--       require "plugins.configs.lspconfig"
--       require "custom.plugins.lspconfig"
--     end,
--   },
--
--   -- https://github.com/wbthomason/packer.nvim#specifying-plugins
--   -- overrde plugin configs
--   -- ["nvim-treesitter/nvim-treesitter"] = {
--   --   commit = "e53950f646b0c11624280ee7c4eff97a9e0904f1",
--   --   override_options = custom.plugins.treesitter,
--   --   config = function()
--   --       require("nvim-treesitter.install").prefer_git = true
--   --   end,
--   -- },
--
--   ["williamboman/mason.nvim"] = {
--     override_options = overrides.mason,
--   },
--
--   -- ["kyazdani42/nvim-tree.lua"] = {
--   --   override_options = overrides.nvimtree,
--   -- },
--   --
--   -- -- Install a plugin
--   -- ["max397574/better-escape.nvim"] = {
--   --   event = "InsertEnter",
--   --   config = function()
--   --     require("better_escape").setup()
--   --   end,
--   -- },
--
--   -- code formatting, linting etc
--   -- ["jose-elias-alvarez/null-ls.nvim"] = {
--   --   after = "nvim-lspconfig",
--   --   config = function()
--   --     require "custom.plugins.null-ls"
--   --   end,
--   -- },
--
--   -- remove plugin example
--   -- ["hrsh7th/cmp-path"] = false,
-- }

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
local lspconfig = require('lspconfig')

lspconfig['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
lspconfig['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
lspconfig['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
    settings = {
      ["rust-analyzer"] = {}
    }
}
lspconfig['gopls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
