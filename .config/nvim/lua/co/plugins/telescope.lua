return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  cmd = 'Telescope',
  setup = function()
    require('telescope').setup {
      defaults = {
        prompt_prefix = '   ',
        selection_caret = ' ',
        entry_prefix = ' ',
        sorting_strategy = 'ascending',
        layout_config = {
          horizontal = {
            prompt_position = 'top',
            preview_width = 0.55,
          },
          width = 0.87,
          height = 0.80,
        },
        mappings = {
          n = { ['q'] = require('telescope.actions').close },
        },
      },

      extensions_list = { 'themes', 'terms' },
      extensions = {},
    }
  end,
  keys = {
    { '<leader>sf', '<cmd>Telescope find_files<CR>', { desc = '[s]earch [f]ile' } },
    { '<leader>sg', '<cmd>Telescope live_grep<CR>', { desc = '[s]earch [g]rep' } },
    { '<leader>sb', '<cmd>Telescope buffers<CR>', { desc = '[s]earch [b]uffer' } },
    { '<leader>so', '<cmd>Telescope oldfiles<CR>', { desc = '[s]earch [o]ld file' } },
    { '<leader>sc', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { desc = '[s]earch in [c]urrent buffer' } },
  },
}
