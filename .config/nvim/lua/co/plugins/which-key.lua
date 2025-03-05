-- Show you pending keybinds
-- https://github.com/folke/which-key.nvim
return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      -- Delay between pressing a key and opening which-key (milliseconds)
      delay = 250,
      icons = {
        -- Set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table
        keys = {},
      },

      -- Document existing key chains
      spec = {
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>g', group = '[G]it' },
      },
    },
  },
}
