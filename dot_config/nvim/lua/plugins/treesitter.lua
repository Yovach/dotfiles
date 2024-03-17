return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      mode = "cursor",
      max_lines = 3
    }
  },
  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      local configs = require 'nvim-treesitter.configs'

      configs.setup {
        ensure_installed = { 'javascript', 'typescript', 'css', 'html', 'php', 'rust', 'jsdoc', 'json', 'markdown', 'sql', 'yaml', 'tsx', 'prisma' },
        sync_install = false,
        autotag = {
          enable = true,
        },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  }
}
