return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },

  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,

            ["<S-Down>"] = require("telescope.actions").cycle_history_next,
            ["<S-Up>"] = require("telescope.actions").cycle_history_prev },
        },
      },
      pickers = {
        find_files = {
          find_command = { 'rg', '--files', '--no-ignore-vcs', '--hidden', '-g', '!{.git,node_modules,.next,.pnpm}' },
          theme = "dropdown"
        },
        live_grep = {
          glob_pattern = '!{.git,node_modules,.next.pnpm}',
          additional_args = {'--hidden'}
        }
      }
    }

    pcall(require('telescope').load_extension, 'fzf')

    -- Telescope
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end

      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    -- See `:help telescope.builtin`
    nmap('<leader>?', require('telescope.builtin').oldfiles, '[?] Find recently opened files')
    nmap('<leader><space>', require('telescope.builtin').buffers, '[ ] Find existing buffers')
    nmap('<leader>f', function()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, '[/] Fuzzily search in current buffer')

    nmap('<leader>s/', function()
      require('telescope.builtin').live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, '[S]earch [/] in Open Files')

    nmap('<leader>p', require('telescope.builtin').find_files, '[S]earch [F]iles')
    nmap('<leader>sw', require('telescope.builtin').grep_string, '[S]earch current [W]ord')
    nmap('<leader>sg', require('telescope.builtin').live_grep, '[S]earch by [G]rep')
    nmap('<leader>F', ':LiveGrepGitRoot<cr>', '[S]earch by [G]rep on Git Root')
    nmap('<leader>sd', require('telescope.builtin').diagnostics, '[S]earch [D]iagnostics')
    nmap('<leader>sr', require('telescope.builtin').resume, '[S]earch [R]esume')
    nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
    nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
  end,
}
