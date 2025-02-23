local opts = {}

function opts.init()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true

    -- Indents
    vim.opt.tabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.softtabstop = 2
    vim.opt.expandtab = true
    vim.opt.smartindent = true

    -- Preferences
    vim.opt.autoread = true -- Read a file when it was changed outside of nvim
    vim.opt.autowrite = true -- Automatically write file when it was changed
    vim.opt.encoding = 'UTF-8' -- Default encoding
    vim.opt.number = true -- Number in front of each line
    vim.opt.relativenumber = true
    vim.opt.mouse = 'a' -- Enabled in all mode
    vim.opt.signcolumn = 'yes'
    vim.opt.wrap = true -- Long lines are wrapped
    vim.opt.completeopt = {'menu', 'menuone', 'noselect', 'preview'}
    vim.opt.splitbelow = true -- Cursor go on the left window when split
    vim.opt.splitright = true -- Cursor go on the right windows when split
    vim.opt.confirm = true -- Confirm before closing an unsaved buffer
    vim.opt.cursorline = true -- Highlight current line
    vim.opt.expandtab = true -- Use spaces instead of tabs
    vim.opt.smartindent = true -- Insert indents automatically
    vim.opt.winbar = '' -- Disable winbar

    -- Sync clipboard between OS and Neovim.
    --  Schedule the setting after `UiEnter` because it can increase startup-time.
    --  Remove this option if you want your OS clipboard to remain independent.
    --  See `:help 'clipboard'`
    vim.schedule(function()
      vim.opt.clipboard = 'unnamedplus'
    end)

    -- Enable break indent
    vim.opt.breakindent = true

    -- Save undo history
    vim.opt.undofile = true

    -- Decrease update time
    vim.opt.updatetime = 250
    vim.opt.timeoutlen = 300

    vim.opt.scrolloff = 10 -- Keep 10 lines while scrolling

    vim.opt.ignorecase = true
    vim.opt.smartcase = true

    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = false

    -- Hide command bar
    vim.opt.cmdheight = 0

    if vim.fn.has('wsl') == 1 then
        vim.g.clipboard = {
            name = 'WslClipboard',
            copy = {
                ['+'] = 'clip.exe',
                ['*'] = 'clip.exe'
            },
            paste = {
                ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
                ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))'
            },
            cache_enabled = 0
        }
    end


    -- Highlight when yanking (copying) text
    --  Try it with `yap` in normal mode
    --  See `:help vim.highlight.on_yank()`
    vim.api.nvim_create_autocmd('TextYankPost', {
      desc = 'Highlight when yanking (copying) text',
      group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
      callback = function()
        vim.highlight.on_yank()
      end,
    })
end

return opts
