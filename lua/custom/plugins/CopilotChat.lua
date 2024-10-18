return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    event = 'VeryLazy',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    build = function()
      local os = vim.loop.os_uname().sysname
      return os:match 'Windows' and '' or 'make tiktoken'
    end,
    opts = {
      context = 'buffers',
      selection = function(source)
        local select = require 'CopilotChat.select'
        return select.visual(source) or select.buffer(source)
      end,
    },
    config = function(_, opts)
      require('CopilotChat').setup(opts)

      require('CopilotChat.integrations.cmp').setup()

      require('which-key').add {
        { '<leader>cc', group = '[C]opilot[C]hat', icon = { icon = ' ', color = 'orange' } },
      }
    end,
    keys = {
      {
        '<leader>cch',
        function()
          local actions = require 'CopilotChat.actions'
          require('CopilotChat.integrations.telescope').pick(actions.help_actions())
        end,
        desc = '[C]opilot[C]hat - [H]elp actions',
      },
      -- Show prompts actions with telescope
      {
        '<leader>ccp',
        function()
          local actions = require 'CopilotChat.actions'
          require('CopilotChat.integrations.telescope').pick(actions.prompt_actions())
        end,
        desc = '[C]opilot[C]hat - [P]rompt actions',
      },
      { '<leader>cce', '<cmd>CopilotChatExplain<cr>', desc = '[C]opilot[C]hat - [E]xplain code' },
      { '<leader>cct', '<cmd>CopilotChatTests<cr>', desc = '[C]opilot[C]hat - Generate [T]ests' },
      { '<leader>ccr', '<cmd>CopilotChatReview<cr>', desc = '[C]opilot[C]hat - [R]eview code' },
      { '<leader>ccR', '<cmd>CopilotChatRefactor<cr>', desc = '[C]opilot[C]hat - [R]efactor code' },
      { '<leader>ccn', '<cmd>CopilotChatBetterNamings<cr>', desc = '[C]opilot[C]hat - Better [N]aming' },
      { '<leader>cco', '<cmd>CopilotChat<cr>', desc = '[C]opilot[C]hat - [O]pen chat' },
    },
    cond = not vim.g.vscode,
  },
}
