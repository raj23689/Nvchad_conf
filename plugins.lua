local plugins = {
{ -- This plugin
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = {},
  config = function (_, _)
    require("core.utils").load_mappings("compiler")
  end
},
{ -- The task runner we use
  "stevearc/overseer.nvim",
  commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  opts = {
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1
    },
  },
},
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "svelte-language-server",
        "vue-language-server",
        "astro-language-server",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "vue",
      "astro",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "astro",
        "svelte",
        "vue",
        "python",
        "rust",
      }
      return opts
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = true,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
  }
}
return plugins
