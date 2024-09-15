return {
  'echasnovski/mini.files',
  version = false,
  dependencies = {
    'echasnovski/mini.nvim',
  },
  config = function()
    local files = require('mini.files')
    files.setup()

    vim.keymap.set('n', '<leader>e', files.open)

    local icons = require("mini.icons")
    icons.setup()
  end,
}
