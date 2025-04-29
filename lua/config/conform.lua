require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        bash = { "shfmt" },
        sql = { "sqlfmt" },
        php = { "phpactor" },
        markdown = { "prettier" },
    },
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*",
--  callback = function(args)
--    require("conform").format({ bufnr = args.buf })
--  end,
--})

vim.api.nvim_create_user_command("Format", function()
    require("conform").format()
end, {})
