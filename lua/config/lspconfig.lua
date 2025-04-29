require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "emmet_ls",
        "jsonls",
        "html",
        "cssls",
        "ts_ls",
        "html",
        "cssls",
        "vimls",
        "sqlls",
        "prismals",
        "phpactor",
        "mesonlsp",
        "grammarly",
        "bashls"
    },
})

require('lspconfig').emmet_ls.setup({
  filetypes = {
      "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "javascript", "typescript", "markdown", "ejs"
  },
  init_options = {
      html = {
        options = {
              ["bem.enabled"] = true, -- Example option
          },
      },
  },
})
