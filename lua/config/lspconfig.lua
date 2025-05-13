require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
--[[
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
    automatic_enable = true
})
]]
