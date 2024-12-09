return {
  {
    'romgrk/barbar.nvim',
    event = 'VeryLazy',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      icons = {
        pinned = { button = '', filename = true },
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true },
          [vim.diagnostic.severity.WARN] = { enabled = true },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
      },
    },
    keys = {
      { '<A-,>', '<Cmd>BufferPrevious<CR>' },
      { '<A-.>', '<Cmd>BufferNext<CR>' },
      { '<A-<>', '<Cmd>BufferMovePrevious<CR>' },
      { '<A->>', '<Cmd>BufferMoveNext<CR>' },
      { '<leader>bp', '<Cmd>BufferPin<CR>', desc = '[B]uffer --> [P]in' },
      { '<leader>bq', '<Cmd>BufferPick<CR>', desc = '[B]uffer --> [Q]uickPick' },
      { '<leader>bd', '<Cmd>BufferClose<CR>', desc = '[B]uffer --> [D]elete' },
      { '<leader>bD', '<Cmd>BufferClose!<CR>', desc = '[B]uffer --> force [D]elete' },
      { '<leader>bn', ':enew<CR>', desc = '[B]uffer --> [N]ew' },
      { '<leader>bs', ':w<CR>', desc = '[B]uffer --> [S]ave' },
      { '<leader>bS', ':saveas ', desc = '[B]uffer --> [S]ave as...' },
    },
    cond = not vim.g.vscode,
  },
}
