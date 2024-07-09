return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      local os = vim.loop.os_uname().sysname
      local basepath = ''
      if os:match 'Windows' then
        basepath = '~'
      else
        basepath = '/mnt/c/Users/thkl2944'
      end
      require('orgmode').setup {
        org_agenda_files = basepath .. '/org/**/*',
        org_default_notes_file = basepath .. '/org/notes.org',
      }

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
}
