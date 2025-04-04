local telescope = require('telescope')

-- Basic setup
telescope.setup({
  defaults = {
    prompt_prefix = "> ",
    selection_caret = "> ",
    sorting_strategy = "ascending",
    layout_config = {
      vertical = { height = 0.9 , preview_height = 0.8 },
      horizontal = { width = 0.9 , preview_width = 0.7 },
    },
  },
})
telescope.load_extension("themes")

-- Key mappings for Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fc', '<cmd>Telescope commands<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope registers<CR>', { noremap = true, silent = true })
