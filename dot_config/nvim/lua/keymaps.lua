local keys = {}

function keys.init()
    -- Keymaps for better default experience
    -- See `:help vim.keymap.set()`
    vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {
        silent = true
    })

    -- Remap for dealing with word wrap
    vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", {
        expr = true,
        silent = true
    })
    vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", {
        expr = true,
        silent = true
    })

    -- Disable Arrow keys
    vim.keymap.set('n', '<Up>', '<Nop>', {
        silent = true
    })
    vim.keymap.set('n', '<Down>', '<Nop>', {
        silent = true
    })
    vim.keymap.set('n', '<Left>', '<Nop>', {
        silent = true
    })
    vim.keymap.set('n', '<Right>', '<Nop>', {
        silent = true
    })

    -- Clear search with <esc>
    vim.keymap.set({'i', 'n'}, '<esc>', '<cmd>noh<cr><esc>', {
        desc = 'Escape and clear hlsearch',
        silent = true
    })
    -- Save
    vim.keymap.set('n', '<C-S>', '<CMD>w<CR>', {
        silent = true,
        desc = 'Save file'
    })

    -- THE F1 BUTTON IS SO FUCKING ANNOYING BRO
    vim.keymap.set("v", "<F1>", "<Nop>", {
        silent = true
    })
    vim.keymap.set("i", "<F1>", "<Nop>", {
        silent = true
    })
    vim.keymap.set("n", "<F1>", "<Nop>", {
        silent = true
    })

    -- Resize window
    vim.keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", {
        desc = "Increase window height",
        silent = true
    })
    vim.keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", {
        desc = "Decrease window height",
        silent = true
    })
    vim.keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", {
        desc = "Decrease window width",
        silent = true
    })
    vim.keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", {
        desc = "Increase window width",
        silent = true
    })

    -- Others
    vim.keymap.set("n", "<leader>wd", "<C-W>c", {
        desc = "Delete window",
        silent = true
    })
    vim.keymap.set("n", "<leader>wy", "<C-W>s", {
        desc = "Split window below",
        silent = true
    })
    vim.keymap.set("n", "<leader>wx", "<C-W>v", {
        desc = "Split window right",
        silent = true
    })

    -- Move lines
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
        desc = "Move line up",
        silent = true
    })
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
        desc = "Move line down",
        silent = true
    })
end

return keys
