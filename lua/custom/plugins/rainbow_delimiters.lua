return {
  'hiphish/rainbow-delimiters.nvim',
  event = 'BufReadPre',
  config = function()
    local highlight = {
      'RainbowRed',
      'RainbowYellow',
      'RainbowBlue',
      'RainbowOrange',
      'RainbowGreen',
      'RainbowViolet',
      'RainbowCyan',
    }
    local hooks = require 'ibl.hooks'
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes

    -- TODO: Poner colores de catppucin
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#f38ba8' })
      vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#eed49f' })
      vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#89b4fa' })
      vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#fab387' })
      vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#a6e3a1' })
      vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#c6a0f6' })
      vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#7dc4e4' })
    end)
    vim.g.rainbow_delimiters = { highlight = highlight }
    require('ibl').setup { scope = { highlight = highlight } }

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
