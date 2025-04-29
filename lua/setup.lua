require('config.lazy')
require('config.copilot')
require('config.lualine')
require('config.bufferline')
require('config.goto-preview')
require('config.telescope')
require('config.search')
require('config.treesitter')
require('config.colorizer')
require('config.lspconfig')
require('config.themer')
require('config.indentblankline')
require('config.conform')
require('keybinding')

-- Startup configuration for Neovim
local file = io.open(vim.fn.stdpath("config") .. "/last_theme.txt", "r")
if file then
    local last_theme = file:read("*l")
    file:close()
    if last_theme then
        require("themer").setup({ colorscheme = last_theme })
    end
else
    require("themer").setup({ colorscheme = "uwu" })
end


