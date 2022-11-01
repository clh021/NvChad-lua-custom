local M = {}

M.treesitter = {
  -- :TSUpdate all
  -- :TSUpdate
  auto_install = true,
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "css",
    "diff",
    "dockerfile",
    "gitignore",
    "go",
    "html",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "markdown_inline",
    "php",
    "proto",
    "python",
    "scss",
    "sql",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
}

M.mason = {
  -- https://github.com/williamboman/mason-lspconfig.nvim
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    -- "deno",
    "dockerfile-language-server",
    "gopls",
    "vue-language-server",

  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
