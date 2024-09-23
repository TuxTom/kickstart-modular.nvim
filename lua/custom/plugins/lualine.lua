return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    config = function()
      require('lualine').setup {
        options = {
          -- vscode does not allow to configure the status bar font, so we cannot use a nerd font
          icons_enabled = not vim.g.vscode,
          theme = 'auto',
          component_separators = vim.g.vscode and { left = '|', right = '|' } or { left = '', right = '' },
          section_separators = vim.g.vscode and { left = '|', right = '|' } or { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = { {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)
            end,
          } },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = {
            {
              function()
                local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ':~')
                if cwd == '~' then
                  return '󰋜'
                end
                return string.gsub(cwd, '~/', '󰋜 /')
              end,
            },
            {
              'filename',
              path = 1,
              fmt = function(str)
                if str == '~' then
                  return '󰋜'
                end
                return string.gsub(str, '~/', '󰋜 /')
              end,
            },
          },
          lualine_x = { { 'encoding', show_bomb = true }, 'fileformat', 'filetype', { 'copilot', show_colors = true } },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {
            {
              function()
                local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ':~')
                if cwd == '~' then
                  return '󰋜'
                end
                return string.gsub(cwd, '~/', '󰋜 /')
              end,
            },
            {
              'filename',
              path = 1,
              fmt = function(str)
                if str == '~' then
                  return '󰋜'
                end
                return string.gsub(str, '~/', '󰋜 /')
              end,
            },
          },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = { 'lazy' },
      }
    end,
  },
}
