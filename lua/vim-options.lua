-- <leader> will be this value
vim.g.mapleader = " "

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

vim.opt.ignorecase = true

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.keymap.set('n', '(', 'i<CR><C-c>', {})
vim.keymap.set('n', '<C-d>', '<C-d>M', {})
vim.keymap.set('n', '<C-u>', '<C-u>M', {})

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- buffer navigation
vim.keymap.set('n', '<leader>l', ':bn<CR>', {})
vim.keymap.set('n', '<leader>h', ':bp<CR>', {})

-- terminal mapping
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], {})
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w><C-h>]], {})
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w><C-l>]], {})
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w><C-j>]], {})
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w><C-k>]], {})
