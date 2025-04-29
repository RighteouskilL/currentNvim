vim.cmd('command! ReloadConfig source $MYVIMRC')
-- Key bindings in Lua
vim.api.nvim_set_keymap('n', '<C-G>', ":lua require('search').open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope fd<CR>', { noremap = true, silent = true })  -- Find files using Telescope
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope grep_string<CR>', { noremap = true, silent = true }) -- Search for a string in the file
vim.api.nvim_set_keymap('n', '<C-b>', ':Telescope buffers<CR>', { noremap = true, silent = true }) -- Browse open buffers
vim.api.nvim_set_keymap('n', '<leader>rr', ':ReloadConfig<CR>', { noremap = true, silent = true }) -- Reload configuration
vim.api.nvim_set_keymap('n', '<leader>t', ':SCROLLCOLOR <CR>', { noremap = true, silent = true }) -- Scroll color (custom function)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true }) -- Quit current window
vim.api.nvim_set_keymap('n', '<leader>Q', ':q!<CR>', { noremap = true, silent = true }) -- Quit without saving
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true }) -- Save current buffer
vim.api.nvim_set_keymap('n', '<leader>W', ':wq<CR>', { noremap = true, silent = true }) -- Save and quit
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true }) -- Close the current buffer
vim.api.nvim_set_keymap('n', '<leader>BD', ':bd!<CR>', { noremap = true, silent = true }) -- Force close buffer without saving
vim.api.nvim_set_keymap('n', '<leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true }) -- Toggle highlight search
vim.api.nvim_set_keymap('n', '<leader>n', ':set number!<CR>', { noremap = true, silent = true }) -- Toggle line numbers
vim.api.nvim_set_keymap('n', '<leader>r', ':set relativenumber!<CR>', { noremap = true, silent = true }) -- Toggle relative line numbers
vim.api.nvim_set_keymap('n', '<leader>c', ':set cursorline!<CR>', { noremap = true, silent = true }) -- Toggle cursor line
vim.api.nvim_create_autocmd("User", {
    pattern = "ThemerLoaded",
    callback = function()
        local theme = require("themer").colorscheme
        local file = io.open(vim.fn.stdpath("config") .. "/last_theme.txt", "w")
        if file then
            file:write(theme)
            file:close()
        end
    end,
})
vim.api.nvim_create_user_command("ScrollColorSave", function()
    vim.cmd("SCROLLCOLOR")
    local theme = vim.g.colors_name
    if theme then
        local file = io.open(vim.fn.stdpath("config") .. "/last_theme.txt", "w")
        if file then
            file:write(theme)
            file:close()
        end
    else
        print("Error: Could not retrieve colorscheme")
    end
end, {})
