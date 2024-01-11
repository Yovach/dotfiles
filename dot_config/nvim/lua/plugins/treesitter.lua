return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',

  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = { 'javascript', 'typescript', 'css', 'html', 'php', 'rust', 'jsdoc', 'json', 'markdown', 'sql', 'yaml', 'tsx' },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
