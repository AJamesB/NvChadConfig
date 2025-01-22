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

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "stylua",
        "lua-language-server",
        "gopls",
      },
    },
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "clangd", "cpp"
  		},
  	},
  },
  "nvim-lua/plenary.nvim",

  {
    "nvchad/ui",
     config = function()
       require "nvchad" 
     end
  },
 
  {
     "nvchad/base46",
     lazy = true,
     build = function()
       require("base46").load_all_highlights()
     end,
  },
 
  "nvzone/volt",

  {
    "sphamba/smear-cursor.nvim",

    opts = {
      -- Smear cursor when switching buffers or windows.
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines.
      smear_between_neighbor_lines = true,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = true,

      -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
      -- Smears will blend better on all backgrounds.
      legacy_computing_symbols_support = false,

      stiffness = 0.5,
      trailing_stiffness = 0.2,
      distance_stop_animating = 0.01,
      trailing_exponenet = 7,
    },
  },
}
