return {
  {
    -- https://github.com/folke/trouble.nvim
    'folke/trouble.nvim',
    ---@type trouble.Config
    opts = {
      focus = true,
    },
    cmd = 'Trouble',
    keys = {
      {
        '<leader>dT',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = '[d]iagnostics [t]oggle (workspace)',
      },
      {
        '<leader>dt',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = '[d]iagnostics [T]oggle (document)',
      },
    },
  },
}
