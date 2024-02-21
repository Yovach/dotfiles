return {
  {
    'catppuccin/nvim',
    name = "catppuccin",
    config = function()
      require('catppuccin').setup {
        -- flavour = "latte",
        flavour = "mocha",

        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          -- fidget = true,
          mason = true,
          telescope = {
            enabled = true,
          },
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'mg979/vim-visual-multi'
  }
}
