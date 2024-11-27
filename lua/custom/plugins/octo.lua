return {
  {
    'pwntester/octo.nvim',
    commit = 'f09ff9413652e3c06a6817ba6284591c00121fe0',
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
