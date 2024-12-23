return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { "nvchad/volt", lazy = true },

  {
    "nvchad/minty",
    cmd = { "Shades", "Huefy" },
  },

  { "nvchad/menu" , lazy = true },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "cpp"
      },
    },
    dependencies = {
      -- NOTE: additional parser
      { "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
    },
  },
}
