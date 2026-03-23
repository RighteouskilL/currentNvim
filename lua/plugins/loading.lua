return {
  -- AI & Essentials
  { "github/copilot.vim" },
  { "andymass/vim-matchup" },
  { "hughbien/md-vim" },
  
  -- UI / Statusline / Bufferline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true,
  },
  { 
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = true,
  },
  { 
    'rcarriga/nvim-notify', 
    opts = { background_colour = "#000000" } 
  },
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {}
  },

  -- Navigation / Search
  { 'junegunn/fzf' },
  { 'junegunn/fzf.vim' },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }, -- ใช้ build แทน run
      'nvim-telescope/telescope-media-files.nvim',
      'nvim-telescope/telescope-project.nvim',
      'nvim-telescope/telescope-symbols.nvim',
      'nvim-telescope/telescope-frecency.nvim',
      'nvim-telescope/telescope-fzf-writer.nvim',
    }
  },
  {
    "FabianWirth/search.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" }
  },
  { 'themercorp/themer.lua' },

  -- Treesitter (จุดสำคัญที่ต้องแก้)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require('config.treesitter')
    end,
  },
  { "nvim-treesitter/nvim-treesitter-textobjects", dependencies = { "nvim-treesitter/nvim-treesitter" } },
  { "nvim-treesitter/nvim-treesitter-context", config = true },

  -- LSP & Completion
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { 'alexaandru/nvim-lspupdate' },
  { 'nvim-lua/completion-nvim' },
  {
    "rmagatti/goto-preview",
    dependencies = { "rmagatti/logger.nvim" },
    event = "BufEnter",
    config = true,
  },

  -- Editing Support
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = true,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  { 'stevearc/conform.nvim', opts = {} },
  { 'numToStr/Comment.nvim', opts = {} },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  { 'norcalli/nvim-colorizer.lua', config = true },

  -- File Explorer & Git
  {
    'simonmclean/triptych.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'antosha417/nvim-lsp-file-operations'
    }
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true,
  },
  { 'lewis6991/gitsigns.nvim', opts = {} },
  { 'tpope/vim-fugitive', event = "BufRead" },
  { 'mbbill/undotree', event = "BufRead" },

  -- Utilities
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = { border = 'curved' },
    }
  }
}
