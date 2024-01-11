return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  after = "catppuccin",
  config = function ()
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
