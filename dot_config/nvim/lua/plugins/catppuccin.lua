return {
  'catppuccin/nvim',
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',

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
}
