return {
  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
    cond = not vim.g.vscode,
  },
}
