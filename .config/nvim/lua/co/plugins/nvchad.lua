return {
  -- https://github.com/NvChad/ui
  {
    'nvchad/ui',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-tree/nvim-web-devicons', lazy = true },
    },
    config = function()
      require 'nvchad'
    end,
  },

  -- https://github.com/NvChad/base46
  {
    'nvchad/base46',
    lazy = false,
    build = function()
      require('base46').load_all_highlights()
    end,
  },
}
