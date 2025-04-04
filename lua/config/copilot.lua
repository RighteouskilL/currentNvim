vim.cmd("autocmd VimEnter * Copilot enable")
vim.g.copilot_filetypes = {
    ["*"] = true,  -- Enable for all file types
  }