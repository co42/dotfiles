-- https://github.com/folke/trouble.nvim
return {
  'folke/trouble.nvim',
  event = { 'BufReadPre' },
  cmd = 'Trouble',
  ---@type trouble.Config
  opts = {
    focus = true,
  },
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
}
