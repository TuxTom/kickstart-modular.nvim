return {
  {
    'pwntester/octo.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    cond = not vim.g.vscode,
    config = true,
    opts = {
      suppress_missing_scope = {
        projects_v2 = true,
      },
    },
  },
}
