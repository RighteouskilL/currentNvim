-- Basic Treesitter setup (1.0.0+)
require('nvim-treesitter').setup({})

-- Textobjects setup (decentralized in 1.0.0)
require('nvim-treesitter-textobjects').setup({
  select = {
    enable = true,
    lookahead = true,
    keymaps = {
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
})

