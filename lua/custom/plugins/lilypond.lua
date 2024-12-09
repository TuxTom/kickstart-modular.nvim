return {
  {
    'martineausimon/nvim-lilypond-suite',
    config = function()
      require('nvls').setup()
      vim.api.nvim_create_autocmd('BufEnter', {
        command = 'syntax sync fromstart',
        pattern = { '*.ly', '*.ily', '*.tex' },
      })
    end,
    cond = not vim.g.vscode,
  },
}
