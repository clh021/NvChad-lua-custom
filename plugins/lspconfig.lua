local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tsserver", "clangd", "gopls", "vls", "bashls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#vuels
lspconfig.vls.setup {
  cmd = {"vls"},
  filetypes = {"vue"},
  root_dir = lspconfig.util.root_pattern("package.json", "vue.config.js")
  -- init_options = {
    -- css = {},
    -- emmet = {},
    -- html = {
    --   suggest = {}
    -- },
    -- javascript = {
    --   format = {}
    -- },
    -- stylusSupremacy = {},
    -- typescript = {
    --   format = {}
    -- },
    -- vetur = {
    --   completion = {
    --     autoImport = false,
    --     tagCasing = "kebab",
    --     useScaffoldSnippets = false
    --   },
    --   format = {
    --     defaultFormatter = {
    --       js = "none",
    --       ts = "none"
    --     },
    --     defaultFormatterOptions = {},
    --     scriptInitialIndent = false,
    --     styleInitialIndent = false
    --   },
    --   useWorkspaceDependencies = false,
    --   validation = {
    --     script = true,
    --     style = true,
    --     template = true
    --   }
    -- }
  -- }
}

lspconfig.bashls.setup {
  cmd = {"bash-language-server", "start"},
  cmd_env = { GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)" },
  filetypes = {"sh"},
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
}
