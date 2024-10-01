return {
  {
    'RRethy/vim-illuminate',
    event = 'VeryLazy',
    config = function()
      require('illuminate').configure {}
    end,
    cond = not vim.g.vscode,
  },
}
