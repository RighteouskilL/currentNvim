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
