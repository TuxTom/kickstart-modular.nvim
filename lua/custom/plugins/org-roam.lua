return {
  {
    'chipsenkbeil/org-roam.nvim',
    tag = '0.1.0',
    dependencies = {
      {
        'nvim-orgmode/orgmode',
        -- tag = '0.3.4',
      },
    },
    config = function()
      local os = vim.loop.os_uname().sysname
      local basepath = ''
      if os:match 'Windows' then
        basepath = '~'
      else
        basepath = '/mnt/c/Users/thkl2944'
      end

      require('org-roam').setup {
        directory = basepath .. '/org/roam',
        -- optional
        org_files = {
          basepath .. '/org/**/*',
        },
      }
    end,
  },
}
