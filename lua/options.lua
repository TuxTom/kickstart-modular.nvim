-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

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

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Use 'g' flag by default for substitutions
vim.opt.gdefault = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

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

vim.opt.fillchars = {
  diff = '╱', -- alternatives = ⣿ ░ ─
  msgsep = '‾',
  foldopen = '▼',
  foldsep = '│',
  foldclose = '▶',
}

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Use 'conceal' where supported
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

vim.cmd 'language en_US.utf8'
vim.cmd 'language time C'

-- Use treesitter folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevelstart = 99

-- Use slashes as dir separator, also on Windows
-- local os = vim.loop.os_uname().sysname
-- if os:match 'Windows' then
--   vim.opt.shellslash = true
-- end

-- Options for Neovide
vim.o.guifont = 'JetBrainsMono Nerd Font:h10:#e-subpixelantialias'
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.3

-- vim: ts=2 sts=2 sw=2 et
