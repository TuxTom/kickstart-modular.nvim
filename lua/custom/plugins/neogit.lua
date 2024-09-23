return {
  {
    'NeogitOrg/neogit',
    event = 'VeryLazy',
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
          require('neogit').open()
        end,
        desc = 'NeoGit',
      },
    },
    cond = not vim.g.vscode,
    config = true,
  },
}
