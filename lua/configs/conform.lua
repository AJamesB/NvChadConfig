local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    clangd = {"clang-format"},
    cmake = {"cmakelang", "cpplint"},
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
