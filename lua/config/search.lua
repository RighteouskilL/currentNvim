-- Enable case-insensitive search unless uppercase letters are used
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight search results
vim.o.hlsearch = true

-- Enable incremental search
vim.o.incsearch = true

-- Optionally, map a key to clear search highlights
vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })
