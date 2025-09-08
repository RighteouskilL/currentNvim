require('keybinding')
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
require('config.triptych')

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

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- Set up nvim-tree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

