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
              'filename',
              path = 3,
              shortening_target = 0,
              fmt = function(str)
                local sep = require('plenary.path').path.sep
                local pattern = '(' .. sep .. '[_-%.,%%#!+=]-[A-Za-z0-9])[^' .. sep .. ']+(' .. sep .. ')'
                return string.gsub(string.gsub(str, pattern, '%1%2'), pattern, '%1%2')
              end,
            },
          },
          lualine_x = { { 'encoding', show_bomb = true }, 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {
            {
              'filename',
              path = 3,
              shortening_target = 0,
              fmt = function(str)
                local sep = require('plenary.path').path.sep
                local pattern = '(' .. sep .. '[_-.,%%#!+=]-[A-Za-z0-9])[^' .. sep .. ']+(' .. sep .. ')'
                return string.gsub(string.gsub(str, pattern, '%1%2'), pattern, '%1%2')
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
