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
                notes = '~/norg',
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
          ['core.text-objects'] = {},
          ['core.esupports.metagen'] = { config = { update_date = false } }, -- do not update date until https://github.com/nvim-neorg/neorg/issues/1579 fixed
        },
      }

      require('which-key').add {
        { '<leader>n', group = '[N]eOrg', icon = { icon = ' ', color = 'azure' } },
        { '<leader>nm', group = '[N]eOrg [M]ove', icon = { icon = ' ', color = 'azure' } },
      }
    end,
    keys = {
      { '<leader>so', '<Plug>(neorg.telescope.find_norg_files)', desc = '[S]earch Ne[O]rg files' },
      { '<leader>ni', '<Plug>(neorg.telescope.insert_link)', desc = '[N]eOrg [I]nsert link' },
      { '<leader>nn', '<Plug>(neorg.dirman.new-note)', desc = '[N]eOrg [N]ew note' },
      { '<leader>sO', '<Plug>(neorg.telescope.search_headings)', desc = '[S]earch Ne[O]rg headings', ft = 'norg' },
      { '<leader>nmu', '<Plug>(neorg.text-objects.item-up)', desc = 'Ne[O]rg [M]ove item [U]p', ft = 'norg' },
      { '<leader>nmd', '<Plug>(neorg.text-objects.item-down)', desc = 'Ne[O]rg [M]ove item [D]own', ft = 'norg' },
    },
    cond = not vim.g.vscode,
  },
}
