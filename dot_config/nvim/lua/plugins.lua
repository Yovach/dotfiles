return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function() 
      vim.cmd.colorscheme 'tokyonight-night'
    end
  },
  {
    'mg979/vim-visual-multi'
  }
}
