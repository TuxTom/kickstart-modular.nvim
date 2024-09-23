-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = '[W]indow -> left' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = '[W]indow -> right' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = '[W]indow -> down' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = '[W]indow -> up' })
vim.keymap.set('n', '<leader>wq', '<C-w><C-q>', { desc = '[W]indow -> [Q]uit' })
vim.keymap.set('n', '<leader>w-', '<C-w><C-s>', { desc = '[W]indow -> horizontal split' })
vim.keymap.set('n', '<leader>w/', '<C-w><C-v>', { desc = '[W]indow -> vertical split' })

vim.keymap.set('n', '<leader>sN', function()
  require('telescope.builtin').live_grep { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files by grep' })
vim.keymap.set('n', '<leader>sc', function()
  require('telescope.builtin').commands()
end, { desc = '[S]earch vim [C]ommands' })
vim.keymap.set('n', '<leader>so', function()
  require('telescope.builtin').vim_options()
end, { desc = '[S]earch vim [O]ptions' })

-- vim.keymap.set('n', '<Tab>', 'za', { desc = 'Toggle fold' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

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

-- vim: ts=2 sts=2 sw=2 et
