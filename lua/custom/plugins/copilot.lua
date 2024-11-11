return {
  {
    'zbirenbaum/copilot.lua',
    cmd = { 'Copilot' },
    event = { 'InsertEnter' },
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = false,
        },
        panel = {
          enabled = false,
        },
      }
    end,
    keys = {
      { '<leader>tc', '<cmd>Copilot toggle<CR>', desc = '[T]oggle [C]opilot' },
    },
    cond = not vim.g.vscode,
  },
}
