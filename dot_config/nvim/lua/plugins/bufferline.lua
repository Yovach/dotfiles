return {
  'akinsho/bufferline.nvim',
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  after = 'catppuccin',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()

    vim.opt.termguicolors = true
    require('bufferline').setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        diagnostics = 'nvim_lsp',
        show_buffer_close_icons = false,
        show_close_icon = false,
      }
    })
  end
}
