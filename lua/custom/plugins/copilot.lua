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
    cond = not vim.g.vscode,
  },
}
