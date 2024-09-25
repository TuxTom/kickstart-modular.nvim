return {
  {
    'nvim-neorg/neorg',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-neorg/neorg-telescope',
    },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {
            config = {
              icon_preset = 'varied',
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = (vim.uv.os_uname().sysname == 'Linux' and '/mnt/c/' or 'C:/') .. 'Users/thkl2944/norg',
              },
              default_workspace = 'notes',
            },
          },
          ['core.completion'] = {
            config = {
              engine = 'nvim-cmp',
            },
          },
          ['core.integrations.telescope'] = {},
        },
      }
    end,
  },
}
