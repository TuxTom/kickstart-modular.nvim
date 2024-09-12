return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    opts = {
      graph_style = 'unicode',
    },
    keys = {
      {
        '<leader>gg',
        function()
          require('neogit').open { cwd = '%:p:h' }
        end,
        desc = 'NeoGit (current file)',
      },
      {
        '<leader>g.',
        function()
          require('neogit').open()
        end,
        desc = 'NeoGit (working dir)',
      },
    },
    cond = not vim.g.vscode,
    config = true,
  },
}
