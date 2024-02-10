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

  vim.opt.cursorline = true

  vim.opt.autoread = true -- Read a file when it was changed outside of nvim
  vim.opt.autowrite = true -- Automatically write file when it was changed
  vim.opt.encoding = 'UTF-8' -- Default encoding
  vim.opt.number = true -- Number in front of each line
  vim.opt.mouse = 'a' -- Enabled in all mode
  vim.opt.signcolumn = 'yes'
  vim.opt.wrap = true -- Long lines are not wrapped
  vim.opt.completeopt = { 'menu', 'menuone', 'noselect', 'preview' }
  vim.opt.splitbelow = true -- Cursor go on the left window when split
  vim.opt.splitright = true -- Cursor go on the right windows when split
  vim.opt.confirm = true -- Confirm before closing an unsaved buffer
  vim.opt.cursorline = true -- Highlight current line
  vim.opt.expandtab = true -- Use spaces instead of tabs
  vim.opt.smartindent = true -- Insert indents automatically
  vim.opt.winbar = '' -- Disable winbar

  vim.opt.ignorecase = true
  vim.opt.smartcase = true

  if vim.fn.has('wsl') == 1 then
    vim.g.clipboard = {
      name = 'WslClipboard',
        copy = {
          ['+'] = 'clip.exe',
          ['*'] = 'clip.exe',
        },
        paste = {
          ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
          ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        },
        cache_enabled = 0,
    }
  end
end

return opts
