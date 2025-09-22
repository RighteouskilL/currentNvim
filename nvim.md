# 📁 โครงสร้างไฟล์โปรเจกต์

## 📁 โครงสร้างไฟล์โปรเจกต์

- 📂 nvim
    - 📄 .gitignore (hidden)
    - 📄 init.vim
    - 📄 last_theme.txt
    - 📄 lazy-lock.json
    - 📄 nvim.md (hidden)
    - 📂 lua
        - 📄 keybinding.lua
        - 📄 setup.lua
        - 📂 config
            - 📄 bufferline.lua
            - 📄 colorizer.lua
            - 📄 conform.lua
            - 📄 copilot.lua
            - 📄 goto-preview.lua
            - 📄 indentblankline.lua
            - 📄 lazy.lua
            - 📄 lsp.lua
            - 📄 lspconfig.lua
            - 📄 lualine.lua
            - 📄 search.lua
            - 📄 telescope.lua
            - 📄 themer.lua
            - 📄 treesitter.lua
            - 📄 triptych.lua
        - 📂 plugins
            - 📄 loading.lua


## 📄 .gitignore
```
⚠️ Skipped (sensitive file)
```

## 📄 init.vim
```
autocmd BufRead,BufNewFile *.ejs set filetype=html
" setting
" let mapleader = ";"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_setColors = 8
let g:indentLine_defaultGroup = 'IndentLine'
let g:indentLine_bgcolor_term = 236
let g:indentLine_bgcolor_gui = '#2e3440'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#3b4252'
let g:NERDTreeConfirmDelete = 0
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.6, 'relative': v:true , 'yoffset': 1.0 } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

set background=dark
set clipboard=unnamedplus
set completeopt="noinsert,menuone,noselect"
set cursorline
set encoding=UTF-8
set expandtab
set ff=unix
set fillchars+=vert:│
set hidden
set nowrap
set nocompatible
set nobackup
set noswapfile
set number
set relativenumber
set shiftwidth=2
set showmatch
set tabstop=2
set tags=./tags;/
set termguicolors
set t_Co=256
set wildmenu
highlight Visual guibg=#444444 guifg=NONE
setlocal foldexpr="nvim_treesitter#foldexpr()"
setlocal scrolloff<
setlocal scrolloff=24
filetype on
filetype plugin indent on
syntax enable
syntax on
"lua config
lua require("/setup")


```

## 📄 last_theme.txt
```
ayu_dark
```

## 📄 lazy-lock.json
```
{
  "Comment.nvim": { "branch": "master", "commit": "e30b7f2008e52442154b66f7c519bfd2f1e32acb" },
  "bufferline.nvim": { "branch": "main", "commit": "655133c3b4c3e5e05ec549b9f8cc2894ac6f51b3" },
  "completion-nvim": { "branch": "master", "commit": "87b0f86da3dffef63b42845049c648b5d90f1c4d" },
  "conform.nvim": { "branch": "master", "commit": "b4aab989db276993ea5dcb78872be494ce546521" },
  "copilot.vim": { "branch": "release", "commit": "c2c435419e081a87e909e8979c66d874e75e4155" },
  "fzf": { "branch": "master", "commit": "a0a334fc8dd9042b667e18c6dcda9fc06799239a" },
  "fzf.vim": { "branch": "master", "commit": "879db51d0965515cdaef9b7f6bdeb91c65d2829e" },
  "gitsigns.nvim": { "branch": "main", "commit": "6e3c66548035e50db7bd8e360a29aec6620c3641" },
  "goto-preview": { "branch": "main", "commit": "b5eb40a425caf6f8cff08aa40f2cfc0f0b0bda2c" },
  "indent-blankline.nvim": { "branch": "master", "commit": "005b56001b2cb30bfa61b7986bc50657816ba4ba" },
  "lazy.nvim": { "branch": "main", "commit": "6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a" },
  "logger.nvim": { "branch": "main", "commit": "63dd10c9b9a159fd6cfe08435d9606384ff103c5" },
  "lualine.nvim": { "branch": "master", "commit": "b8c23159c0161f4b89196f74ee3a6d02cdc3a955" },
  "mason-lspconfig.nvim": { "branch": "main", "commit": "5e085efe67fccb13372d54331d849219662a7e93" },
  "mason.nvim": { "branch": "main", "commit": "7dc4facca9702f95353d5a1f87daf23d78e31c2a" },
  "md-vim": { "branch": "master", "commit": "af6077f4f5c25218029d843638fd4b478cc25882" },
  "nvim-colorizer.lua": { "branch": "master", "commit": "a065833f35a3a7cc3ef137ac88b5381da2ba302e" },
  "nvim-lsp-file-operations": { "branch": "master", "commit": "9744b738183a5adca0f916527922078a965515ed" },
  "nvim-lspconfig": { "branch": "master", "commit": "c8b90ae5cbe21d547b342b05c9266dcb8ca0de8f" },
  "nvim-lspupdate": { "branch": "main", "commit": "8b809b7887790f1742b6f9de6d35c35f07c23ec2" },
  "nvim-notify": { "branch": "master", "commit": "8701bece920b38ea289b457f902e2ad184131a5d" },
  "nvim-surround": { "branch": "main", "commit": "a868c256c861044beb9794b4dd126480dcdfbdad" },
  "nvim-tree.lua": { "branch": "master", "commit": "f92cc3a91cbe6530ac19234764edc31a1baf1b0e" },
  "nvim-treesitter": { "branch": "master", "commit": "42fc28ba918343ebfd5565147a42a26580579482" },
  "nvim-treesitter-context": { "branch": "master", "commit": "66a9b5fa9e806918b5fe3dba00c6cce7e230abd2" },
  "nvim-treesitter-refactor": { "branch": "master", "commit": "d8b74fa87afc6a1e97b18da23e762efb032dc270" },
  "nvim-treesitter-textobjects": { "branch": "master", "commit": "71385f191ec06ffc60e80e6b0c9a9d5daed4824c" },
  "nvim-web-devicons": { "branch": "master", "commit": "6e51ca170563330e063720449c21f43e27ca0bc1" },
  "playground": { "branch": "master", "commit": "ba48c6a62a280eefb7c85725b0915e021a1a0749" },
  "plenary.nvim": { "branch": "master", "commit": "b9fd5226c2f76c951fc8ed5923d85e4de065e509" },
  "search.nvim": { "branch": "main", "commit": "7b8f2315d031be73e14bc2d82386dfac15952614" },
  "telescope-frecency.nvim": { "branch": "master", "commit": "21c08f073cfae477e6304b85cae78fbf46a793a4" },
  "telescope-fzf-native.nvim": { "branch": "main", "commit": "1f08ed60cafc8f6168b72b80be2b2ea149813e55" },
  "telescope-fzf-writer.nvim": { "branch": "master", "commit": "00a1ab1b0aeaa4ad9da238861325ea1ee6d90a44" },
  "telescope-media-files.nvim": { "branch": "master", "commit": "0826c7a730bc4d36068f7c85cf4c5b3fd9fb570a" },
  "telescope-project.nvim": { "branch": "master", "commit": "8e11df94419e444601c09828dadf70890484e443" },
  "telescope-symbols.nvim": { "branch": "master", "commit": "a6d0127a53d39b9fc2af75bd169d288166118aec" },
  "telescope.nvim": { "branch": "master", "commit": "b4da76be54691e854d3e0e02c36b0245f945c2c7" },
  "themer.lua": { "branch": "main", "commit": "625510cfec70b55fe42d04b1256c5f93c92a4202" },
  "toggleterm.nvim": { "branch": "main", "commit": "50ea089fc548917cc3cc16b46a8211833b9e3c7c" },
  "triptych.nvim": { "branch": "main", "commit": "f30e48d8861adc69de01d65099d7b8922fb34f54" },
  "undotree": { "branch": "master", "commit": "fe9a9d0645f0f5532360b5e5f5c550d7bb4f1869" },
  "vim-fugitive": { "branch": "master", "commit": "61b51c09b7c9ce04e821f6cf76ea4f6f903e3cf4" },
  "vim-matchup": { "branch": "master", "commit": "b23ba393ee600f4f637999f2c02b06a17838e2f0" },
  "vim-surround": { "branch": "master", "commit": "3d188ed2113431cf8dac77be61b842acb64433d9" },
  "which-key.nvim": { "branch": "main", "commit": "370ec46f710e058c9c1646273e6b225acf47cbed" }
}

```

## 📄 nvim.md
```
⚠️ Skipped (sensitive file)
```

## 📄 lua\keybinding.lua
```
vim.cmd('command! ReloadConfig source $MYVIMRC')
vim.g.mapleader = ";"

-- Key bindings in Lua
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', ':Triptych<CR>', { noremap = true, silent = true }) -- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-g>', ":lua require('search').open()<CR>", { noremap = true, silent = true })
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

```

## 📄 lua\setup.lua
```
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


```

## 📄 lua\config\bufferline.lua
```
require('bufferline').setup {
	options = {
		mode = "buffers",
		numbers = function(opts)
			return string.format('%s|%s.)', opts.id, opts.raise(opts.ordinal))
		end,
		color_icons = true,
	}
}
```

## 📄 lua\config\colorizer.lua
```
require('colorizer').setup()
```

## 📄 lua\config\conform.lua
```
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

```

## 📄 lua\config\copilot.lua
```
vim.cmd("autocmd VimEnter * Copilot enable")
vim.g.copilot_filetypes = {
    ["*"] = true,  -- Enable for all file types
  }
```

## 📄 lua\config\goto-preview.lua
```
require('goto-preview').setup {
  width = 120, -- Width of the floating window
  height = 15, -- Height of the floating window
  border = {"↖", "─" ,"┐", "│", "┘", "─", "└", "│"}, -- Border characters of the floating window
  default_mappings = false, -- Bind default mappings
  debug = false, -- Print debug information
  opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent.
  resizing_mappings = false, -- Binds arrow keys to resizing the floating window.
  post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
  post_close_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
  references = { -- Configure the telescope UI for slowing the references cycling window.
    provider = "telescope", -- telescope|fzf_lua|snacks|mini_pick|default
    telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
  },
  -- These two configs can also be passed down to the goto-preview definition and implementation calls for one off "peak" functionality.
  focus_on_open = true, -- Focus the floating window when opening it.
  dismiss_on_move = false, -- Dismiss the floating window when moving the cursor.
  force_close = true, -- passed into vim.api.nvim_win_close's second argument. See :h nvim_win_close
  bufhidden = "wipe", -- the bufhidden option to set on the floating window. See :h bufhidden
  stack_floating_preview_windows = true, -- Whether to nest floating windows
  same_file_float_preview = true, -- Whether to open a new floating window for a reference within the current file
  preview_window_title = { enable = true, position = "left" }, -- Whether to set the preview window title as the filename
  zindex = 1, -- Starting zindex for the stack of floating windows
  vim_ui_input = true, -- Whether to override vim.ui.input with a goto-preview floating window
 
}

```

## 📄 lua\config\indentblankline.lua
```
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

```

## 📄 lua\config\lazy.lua
```

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

```

## 📄 lua\config\lsp.lua
```
--require("nvim-lsp-installer").setup {}
require'lspconfig'.pyright.setup{}
require'lspconfig'.ts_ls.setup{}
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
require('lspconfig')['ts_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

```

## 📄 lua\config\lspconfig.lua
```
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

```

## 📄 lua\config\lualine.lua
```
require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'nord',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        NvimTree = {},
        statusline = {},
        winbar = {},
        packer = {}
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {
        { 'filename' },
        {
          function() return vim.fn.getcwd() end,
          icon = '',
          color = { fg = '#ffaa00', gui = 'bold' }
       }
      },
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  }

```

## 📄 lua\config\search.lua
```
-- Enable case-insensitive search unless uppercase letters are used
vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight search results
vim.o.hlsearch = true

-- Enable incremental search
vim.o.incsearch = true

-- Optionally, map a key to clear search highlights
vim.api.nvim_set_keymap('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, silent = true })

```

## 📄 lua\config\telescope.lua
```
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
  pickers = {
    buffers = {
      sort_lastused = true,
      ignore_current_buffer = false,
      show_all_buffers = true,
      previewer = false,
      mappings = {
        i = {
          ["<C-d>"] = "delete_buffer",
        },
        n = {
          ["<C-d>"] = "delete_buffer",
        },
      },
    },
  }
})

telescope.load_extension("themes")

-- Key mappings for Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fc', '<cmd>Telescope commands<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope registers<CR>', { noremap = true, silent = true })

```

## 📄 lua\config\themer.lua
```
require("themer").setup({
  plugins = {
    treesitter = true,
    lualine = true,
    bufferline = true,
    indent_blankline = true,
  }
})

```

## 📄 lua\config\treesitter.lua
```
require'nvim-treesitter.configs'.setup {
	highlight = {
  	  	enable = true,
  	  	-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  	  	-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  	  	-- Using this option may slow down your editor, and you may see some duplicate highlights.
  	  	-- Instead of true it can also be a list of languages
  		additional_vim_regex_highlighting = false
  	},
  textobjects = {
    select = {
       enable = true,
       -- Automatically jump forward to textobj, similar to targets.vim 
       lookahead = true,
       keymaps = {
         -- You can use the capture groups defined in textobjects.scm
         ["af"] = "@function.outer",
         ["if"] = "@function.inner",
         ["ac"] = "@class.outer",
         ["ic"] = "@class.inner"
       }
     },
     move = {
      enable = true,
      set_jumps = true, 
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer'
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer'
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer'
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer'
      }
    }
  }
}

```

## 📄 lua\config\triptych.lua
```
require('triptych').setup{
  mappings = {
    -- Everything below is buffer-local, meaning it will only apply to Triptych windows
    show_help = 'g?',
    jump_to_cwd = '.',  -- Pressing again will toggle back
    nav_left = 'h',
    nav_right = { 'l', '<CR>' }, -- If target is a file, opens the file in-place
    open_hsplit = { '-' },
    open_vsplit = { '|' },
    open_tab = { '<C-t>' },
    cd = '<leader>cd',
    delete = 'd',
    add = 'a',
    copy = 'c',
    rename = 'r',
    rename_from_scratch = 'R',
    cut = 'x',
    paste = 'p',
    quit = 'q',
    toggle_hidden = '<leader>.',
    toggle_collapse_dirs = 'z',
  },
  extension_mappings = {
    ['<c-f>'] = {
      mode = 'n',
      fn = function(target, _)
        require 'telescope.builtin'.live_grep {
          search_dirs = { target.path }
        }
      end
    }
  },
  options = {
    dirs_first = true,
    show_hidden = false,
    collapse_dirs = true,
    line_numbers = {
      enabled = true,
      relative = false,
    },
    file_icons = {
      enabled = true,
      directory_icon = '',
      fallback_file_icon = ''
    },
    responsive_column_widths = {
      -- Keys are breakpoints, values are column widths
      -- A breakpoint means "when vim.o.columns >= x, use these column widths"
      -- Columns widths must add up to 1 after rounding to 2 decimal places
      -- Parent or child windows can be hidden by setting a width of 0
      ['0'] = { 0, 0.5, 0.5 },
      ['120'] = { 0.2, 0.3, 0.5 },
      ['200'] = { 0.25, 0.25, 0.5 },
    },
    highlights = { -- Highlight groups to use. See `:highlight` or `:h highlight`
      file_names = 'NONE',
      directory_names = 'NONE',
    },
    syntax_highlighting = { -- Applies to file previews
      enabled = true,
      debounce_ms = 100,
    },
    backdrop = 60, -- Backdrop opacity. 0 is fully opaque, 100 is fully transparent (disables the feature)
    transparency = 0, -- 0 is fully opaque, 100 is fully transparent
    border = 'single', -- See :h nvim_open_win for border options
    max_height = 45,
    max_width = 220,
    margin_x = 4, -- Space left and right
    margin_y = 4 -- Space above and below
  },
  git_signs = {
    enabled = true,
    signs = {
      -- The value can be either a string or a table.
      -- If a string, will be basic text. If a table, will be passed as the {dict} argument to vim.fn.sign_define
      -- If you want to add color, you can specify a highlight group in the table.
      add = '+',
      modify = '~',
      rename = 'r',
      untracked = '?',
    },
  },
  diagnostic_signs = {
    enabled = true,
  }
}

```

## 📄 lua\plugins\loading.lua
```
return {
    { "github/copilot.vim" },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    { 'junegunn/fzf' },
    { 'junegunn/fzf.vim' } ,
    { 'alexaandru/nvim-lspupdate' },
    { 'nvim-lua/completion-nvim' },
    {
      "rmagatti/goto-preview",
      dependencies = { "rmagatti/logger.nvim" },
      event = "BufEnter",
      config = true, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
    },
    { "rmagatti/logger.nvim" },
    {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      config = true,
      event = "BufRead",
      requires = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "nvim-treesitter/nvim-treesitter-refactor",
        "nvim-treesitter/nvim-treesitter-context",
        "nvim-treesitter/playground",
      },
    },
    { 'nvim-treesitter/nvim-treesitter-textobjects' },
    { 'nvim-treesitter/nvim-treesitter-refactor' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'nvim-treesitter/playground' },
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-media-files.nvim' },
    { 'nvim-telescope/telescope-project.nvim' },
    { 'nvim-telescope/telescope-symbols.nvim' },
    { 'nvim-telescope/telescope-frecency.nvim' },
    { 'nvim-telescope/telescope-fzf-writer.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim' },
    {  "FabianWirth/search.nvim",
      dependencies = { "nvim-telescope/telescope.nvim" } 
    },
    { 'norcalli/nvim-colorizer.lua' },
    { "themercorp/themer.lua" },
    { 
       "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
      opts = {},
    },
    {
    "kylechui/nvim-surround",
      version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  },{
    'stevearc/conform.nvim',
    opts = {},
  },{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  },
  { "andymass/vim-matchup" },
  {"hughbien/md-vim" },
  {
    'simonmclean/triptych.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'nvim-tree/nvim-web-devicons', -- optional for icons
      'antosha417/nvim-lsp-file-operations' -- optional LSP integration
    }
  },{
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  },{
    'lewis6991/gitsigns.nvim',
    opts = {}
  },{
    'numToStr/Comment.nvim',
    opts = {}
  },{
    'folke/which-key.nvim',
    opts = {}
  },{
    'rcarriga/nvim-notify',
    opts = {
      background_colour = "#000000",
    }
  },{
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    }
  },{
    'mbbill/undotree',
    event = "BufRead",
  },{
    'tpope/vim-fugitive',
    event = "BufRead",
  },{
    'tpope/vim-surround',
    event = "BufRead",
  }
}

```

