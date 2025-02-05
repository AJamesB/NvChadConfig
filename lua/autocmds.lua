--fix C++ comments
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixCppCommentString", { clear = true }),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "// %s"
  end,
  pattern = { "hpp", "cc", "cpp" },
})
