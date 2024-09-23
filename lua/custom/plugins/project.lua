return {
  {
    'ahmedkhalf/project.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('project_nvim').setup {
        patterns = { '.git', '.svn' },
        silent_chdir = false,
        require('telescope').load_extension 'projects',
        vim.keymap.set('n', '<leader>sp', function()
          require('telescope').extensions.projects.projects {}
        end, { desc = '[S]earch [P]rojects' }),
      }
    end,
  },
}
