return {
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('ibl').setup()
    end,
    cond = not vim.g.vscode,
  },
}
