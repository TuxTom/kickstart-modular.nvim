return {
  {
    'nvim-orgmode/telescope-orgmode.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-orgmode/orgmode',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('telescope').load_extension 'orgmode'

      vim.keymap.set('n', '<leader>or', require('telescope').extensions.orgmode.refile_heading, { desc = '[R]efile heading' })
      vim.keymap.set('n', '<leader>so', require('telescope').extensions.orgmode.search_headings, { desc = '[O]rg headings' })
      vim.keymap.set('n', '<leader>oi', require('telescope').extensions.orgmode.insert_link, { desc = '[I]nsert link' })
    end,
  },
}
