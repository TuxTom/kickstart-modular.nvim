return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').load_extension 'file_browser'

      vim.keymap.set('n', '<leader>sf', require('telescope').extensions.file_browser.file_browser, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>sF', function()
        require('telescope').extensions.file_browser.file_browser { path = '%:p:h', cwd_to_path = true }
      end, { desc = '[S]earch [F]iles from %:p:h' })
      vim.keymap.set('n', '<leader>sd', function()
        require('telescope').extensions.file_browser.file_browser { depth = false }
      end, { desc = '[S]earch files in [D]irectory recursively' })
      vim.keymap.set('n', '<leader>sD', function()
        require('telescope').extensions.file_browser.file_browser { depth = false, path = '%:p:h', cwd_to_path = true }
      end, { desc = '[S]earch files in [D]ir from %:p:h recursively' })
    end,
    cond = not vim.g.vscode,
  },
}
